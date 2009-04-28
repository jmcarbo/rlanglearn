require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/languages/index.html.erb" do
  include LanguagesHelper
  
  before(:each) do
    assigns[:languages] = [
      stub_model(Language,
        :name => "value for name"
      ),
      stub_model(Language,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of languages" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end

