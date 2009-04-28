require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GrammarItem do
  before(:each) do
    @valid_attributes = {
      :source_description => "value for source_description",
      :target_description => "value for target_description",
      :target_phonetics => "value for target_phonetics",
      :target_language_id => 1,
      :source_language_id => 1,
      :odd_association => "value for odd_association",
      :grammar_catagory_id => 1,
      :parent_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    gi = Factory.create(:grammar_item)
    gi.should be_valid
  end
  
  it "should translate properly" do
    es = Factory.create(:language, :name=>"Español", :iso_2_name=>"es")
    fr = Factory.create(:language, :name=>"Francaise", :iso_2_name=>"fr")
    gi = Factory.create(:grammar_item, :source_description=>"silla", :source_language_id=>es.id,
      :target_language_id=>fr.id)
    gi.translate
    gi.target_description.should == "chaise"
    
  end
end
