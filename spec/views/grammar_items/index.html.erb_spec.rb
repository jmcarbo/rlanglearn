require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/grammar_items/index.html.erb" do
  include GrammarItemsHelper
  
  before(:each) do
    assigns[:grammar_items] = [
      stub_model(GrammarItem,
        :source_description => "value for source_description",
        :target_description => "value for target_description",
        :target_phonetics => "value for target_phonetics",
        :target_language_id => 1,
        :source_language_id => 1,
        :odd_association => "value for odd_association",
        :grammar_catagory_id => 1,
        :parent_id => 1
      ),
      stub_model(GrammarItem,
        :source_description => "value for source_description",
        :target_description => "value for target_description",
        :target_phonetics => "value for target_phonetics",
        :target_language_id => 1,
        :source_language_id => 1,
        :odd_association => "value for odd_association",
        :grammar_catagory_id => 1,
        :parent_id => 1
      )
    ]
  end

  it "renders a list of grammar_items" do
    render
    # response.should have_tag("tr>td", "value for source_description".to_s, 2)
    # response.should have_tag("tr>td", "value for target_description".to_s, 2)
    # response.should have_tag("tr>td", "value for target_phonetics".to_s, 2)
    # response.should have_tag("tr>td", 1.to_s, 2)
    # response.should have_tag("tr>td", 1.to_s, 2)
    # response.should have_tag("tr>td", "value for odd_association".to_s, 2)
    # response.should have_tag("tr>td", 1.to_s, 2)
    # response.should have_tag("tr>td", 1.to_s, 2)
  end
end

