require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/grammar_categories/edit.html.erb" do
  include GrammarCategoriesHelper
  
  before(:each) do
    assigns[:grammar_category] = @grammar_category = stub_model(GrammarCategory,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit grammar_category form" do
    render
    
    response.should have_tag("form[action=#{grammar_category_path(@grammar_category)}][method=post]") do
      with_tag('input#grammar_category_name[name=?]', "grammar_category[name]")
    end
  end
end


