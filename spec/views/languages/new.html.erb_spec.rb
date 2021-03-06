require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/languages/new.html.erb" do
  include LanguagesHelper
  
  before(:each) do
    assigns[:language] = stub_model(Language,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new language form" do
    render
    
    response.should have_tag("form[action=?][method=post]", languages_path) do
      with_tag("input#language_name[name=?]", "language[name]")
    end
  end
end


