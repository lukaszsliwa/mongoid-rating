module Mongoid
  module Rating

    extend ActiveSupport::Concern

    included do
      field :rates, :type => Hash, :default => {}
    end

    module InstanceMethods
      def rate(params = {})
        by = params[:by]
        value = params[:value]
        if by.respond_to?(:id)
          rates[by.id.to_s] = value
        end
        self
      end

      def rate!(params = {})
        rate(params).save
      end

      def rated?(params = {})
        by = params[:by]
        if by.respond_to?(:id)
          rates[by.id.to_s]
        end
      end

      def rates_sum
        rates.values.sum
      end

      def rates_count
        rates.size
      end

      def rates_average
        return 0 if rates_count == 0
        rates_sum / rates_count.to_f
      end
    end
  end
end