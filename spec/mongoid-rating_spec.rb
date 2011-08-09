require File.expand_path(File.dirname(__FILE__) + '/rspec_helper')

describe "MongoidRating" do
  it "should include :rates field" do
    Photo.fields['rates'].should_not be_nil
  end
end
