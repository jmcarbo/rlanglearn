require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GrammarCategory do
  before(:each) do
  end

  it "should create a new instance given valid attributes" do
    Factory.create(:grammar_category)
  end
  
  it "should not allow duplicate categories" do
    a=Factory.create(:grammar_category, :name => "acategory")
    b=Factory.build(:grammar_category, :name => "acategory")
    b.should_not be_valid
  end
end
