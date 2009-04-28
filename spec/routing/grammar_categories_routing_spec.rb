require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GrammarCategoriesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "grammar_categories", :action => "index").should == "/grammar_categories"
    end
  
    it "maps #new" do
      route_for(:controller => "grammar_categories", :action => "new").should == "/grammar_categories/new"
    end
  
    it "maps #show" do
      route_for(:controller => "grammar_categories", :action => "show", :id => "1").should == "/grammar_categories/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "grammar_categories", :action => "edit", :id => "1").should == "/grammar_categories/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "grammar_categories", :action => "create").should == {:path => "/grammar_categories", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "grammar_categories", :action => "update", :id => "1").should == {:path =>"/grammar_categories/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "grammar_categories", :action => "destroy", :id => "1").should == {:path =>"/grammar_categories/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/grammar_categories").should == {:controller => "grammar_categories", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/grammar_categories/new").should == {:controller => "grammar_categories", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/grammar_categories").should == {:controller => "grammar_categories", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/grammar_categories/1").should == {:controller => "grammar_categories", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/grammar_categories/1/edit").should == {:controller => "grammar_categories", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/grammar_categories/1").should == {:controller => "grammar_categories", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/grammar_categories/1").should == {:controller => "grammar_categories", :action => "destroy", :id => "1"}
    end
  end
end
