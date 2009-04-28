require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LanguagesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "languages", :action => "index").should == "/languages"
    end
  
    it "maps #new" do
      route_for(:controller => "languages", :action => "new").should == "/languages/new"
    end
  
    it "maps #show" do
      route_for(:controller => "languages", :action => "show", :id => "1").should == "/languages/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "languages", :action => "edit", :id => "1").should == "/languages/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "languages", :action => "create").should == {:path => "/languages", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "languages", :action => "update", :id => "1").should == {:path =>"/languages/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "languages", :action => "destroy", :id => "1").should == {:path =>"/languages/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/languages").should == {:controller => "languages", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/languages/new").should == {:controller => "languages", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/languages").should == {:controller => "languages", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/languages/1").should == {:controller => "languages", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/languages/1/edit").should == {:controller => "languages", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/languages/1").should == {:controller => "languages", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/languages/1").should == {:controller => "languages", :action => "destroy", :id => "1"}
    end
  end
end
