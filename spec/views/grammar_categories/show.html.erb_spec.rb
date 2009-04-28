require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/grammar_categories/show.html.erb" do
  include GrammarCategoriesHelper
  before(:each) do
    assigns[:grammar_category] = @grammar_category = stub_model(GrammarCategory,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end

