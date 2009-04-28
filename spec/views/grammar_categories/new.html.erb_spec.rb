require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/grammar_categories/new.html.erb" do
  include GrammarCategoriesHelper
  
  before(:each) do
    assigns[:grammar_category] = stub_model(GrammarCategory,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new grammar_category form" do
    render
    
    response.should have_tag("form[action=?][method=post]", grammar_categories_path) do
      with_tag("input#grammar_category_name[name=?]", "grammar_category[name]")
    end
  end
end


