require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/languages/show.html.erb" do
  include LanguagesHelper
  before(:each) do
    assigns[:language] = @language = stub_model(Language,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end

