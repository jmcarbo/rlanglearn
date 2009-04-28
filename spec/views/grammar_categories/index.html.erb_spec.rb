require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/grammar_categories/index.html.erb" do
  include GrammarCategoriesHelper
  
  before(:each) do
    assigns[:grammar_categories] = [
      stub_model(GrammarCategory,
        :name => "value for name"
      ),
      stub_model(GrammarCategory,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of grammar_categories" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end

