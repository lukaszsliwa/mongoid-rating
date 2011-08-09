require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Mongoid::Rating do

  ['Lucas', 'Adam', 'Tom'].each { |name|
    let name.to_s.downcase do
      User.create(:name => name)
    end
  }

  let :photo do
    Photo.create
  end

  it "should include :rates field" do
    Photo.fields['rates'].should_not be_nil
    photo.rates.empty?.should be_true 
  end

  it "should rate" do
    photo.rates[lucas.id.to_s].should be_nil
    photo.rate(:by => lucas, :value => 10)
    photo.rates[lucas.id.to_s].should == 10
    photo.changes.should include('rates')
  end

  it "should rate!" do
    photo.rates[lucas.id.to_s].should be_nil
    photo.rate!(:by => lucas, :value => 5).should be_true
    photo.rates[lucas.id.to_s].should == 5
  end

  it "should check rated?" do
    photo.rated?(:by => adam).should be_false
    photo.rate!(:by => adam, :value => 1).should be_true
    photo.rated?(:by => adam).should be_true
  end

  it "should check rates_* methods" do
    photo.rates_count.should == 0
    photo.rates_sum.should == 0
    photo.rates_average.should == 0

    { adam => 1, lucas => 5, tom => 7}.map { |by, value|
      photo.rate(:by => by, :value => value)
    }
    
    photo.rates_count.should == 3
    photo.rates_sum.should == 13
    photo.rates_average.should == (1+5+7)/3.0
  end

end
