require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/languages/edit.html.erb" do
  include LanguagesHelper
  
  before(:each) do
    assigns[:language] = @language = stub_model(Language,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit language form" do
    render
    
    response.should have_tag("form[action=#{language_path(@language)}][method=post]") do
      with_tag('input#language_name[name=?]', "language[name]")
    end
  end
end


