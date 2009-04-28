require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/grammar_items/show.html.erb" do
  include GrammarItemsHelper
  before(:each) do
    assigns[:grammar_item] = @grammar_item = stub_model(GrammarItem,
      :source_description => "value for source_description",
      :target_description => "value for target_description",
      :target_phonetics => "value for target_phonetics",
      :target_language_id => 1,
      :source_language_id => 1,
      :odd_association => "value for odd_association",
      :grammar_catagory_id => 1,
      :parent_id => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ source_description/)
    response.should have_text(/value\ for\ target_description/)
    response.should have_text(/value\ for\ target_phonetics/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ odd_association/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end

