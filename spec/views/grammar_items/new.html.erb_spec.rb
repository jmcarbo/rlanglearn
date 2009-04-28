require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/grammar_items/new.html.erb" do
  include GrammarItemsHelper
  
  before(:each) do
    assigns[:grammar_item] = stub_model(GrammarItem,
      :new_record? => true,
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

  it "renders new grammar_item form" do
    render
    
    # response.should have_tag("form[action=?][method=post]", grammar_items_path) do
    #   with_tag("input#grammar_item_source_description[name=?]", "grammar_item[source_description]")
    #   with_tag("input#grammar_item_target_description[name=?]", "grammar_item[target_description]")
    #   with_tag("input#grammar_item_target_phonetics[name=?]", "grammar_item[target_phonetics]")
    #   with_tag("input#grammar_item_target_language_id[name=?]", "grammar_item[target_language_id]")
    #   with_tag("input#grammar_item_source_language_id[name=?]", "grammar_item[source_language_id]")
    #   with_tag("textarea#grammar_item_odd_association[name=?]", "grammar_item[odd_association]")
    #   with_tag("input#grammar_item_grammar_catagory_id[name=?]", "grammar_item[grammar_catagory_id]")
    #   with_tag("input#grammar_item_parent_id[name=?]", "grammar_item[parent_id]")
    # end
  end
end


