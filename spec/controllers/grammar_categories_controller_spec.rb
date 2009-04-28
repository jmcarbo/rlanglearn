require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GrammarCategoriesController do

  def mock_grammar_category(stubs={})
    @mock_grammar_category ||= mock_model(GrammarCategory, stubs)
  end
  
  describe "GET index" do
    it "assigns all grammar_categories as @grammar_categories" do
      GrammarCategory.should_receive(:find).with(:all).and_return([mock_grammar_category])
      get :index
      assigns[:grammar_categories].should == [mock_grammar_category]
    end
  end

  describe "GET show" do
    it "assigns the requested grammar_category as @grammar_category" do
      GrammarCategory.should_receive(:find).with("37").and_return(mock_grammar_category)
      get :show, :id => "37"
      assigns[:grammar_category].should equal(mock_grammar_category)
    end
  end

  describe "GET new" do
    it "assigns a new grammar_category as @grammar_category" do
      GrammarCategory.should_receive(:new).and_return(mock_grammar_category)
      get :new
      assigns[:grammar_category].should equal(mock_grammar_category)
    end
  end

  describe "GET edit" do
    it "assigns the requested grammar_category as @grammar_category" do
      GrammarCategory.should_receive(:find).with("37").and_return(mock_grammar_category)
      get :edit, :id => "37"
      assigns[:grammar_category].should equal(mock_grammar_category)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created grammar_category as @grammar_category" do
        GrammarCategory.should_receive(:new).with({'these' => 'params'}).and_return(mock_grammar_category(:save => true))
        post :create, :grammar_category => {:these => 'params'}
        assigns[:grammar_category].should equal(mock_grammar_category)
      end

      it "redirects to the created grammar_category" do
        GrammarCategory.stub!(:new).and_return(mock_grammar_category(:save => true))
        post :create, :grammar_category => {}
        response.should redirect_to(grammar_category_url(mock_grammar_category))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved grammar_category as @grammar_category" do
        GrammarCategory.stub!(:new).with({'these' => 'params'}).and_return(mock_grammar_category(:save => false))
        post :create, :grammar_category => {:these => 'params'}
        assigns[:grammar_category].should equal(mock_grammar_category)
      end

      it "re-renders the 'new' template" do
        GrammarCategory.stub!(:new).and_return(mock_grammar_category(:save => false))
        post :create, :grammar_category => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT udpate" do
    
    describe "with valid params" do
      it "updates the requested grammar_category" do
        GrammarCategory.should_receive(:find).with("37").and_return(mock_grammar_category)
        mock_grammar_category.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :grammar_category => {:these => 'params'}
      end

      it "assigns the requested grammar_category as @grammar_category" do
        GrammarCategory.stub!(:find).and_return(mock_grammar_category(:update_attributes => true))
        put :update, :id => "1"
        assigns[:grammar_category].should equal(mock_grammar_category)
      end

      it "redirects to the grammar_category" do
        GrammarCategory.stub!(:find).and_return(mock_grammar_category(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(grammar_category_url(mock_grammar_category))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested grammar_category" do
        GrammarCategory.should_receive(:find).with("37").and_return(mock_grammar_category)
        mock_grammar_category.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :grammar_category => {:these => 'params'}
      end

      it "assigns the grammar_category as @grammar_category" do
        GrammarCategory.stub!(:find).and_return(mock_grammar_category(:update_attributes => false))
        put :update, :id => "1"
        assigns[:grammar_category].should equal(mock_grammar_category)
      end

      it "re-renders the 'edit' template" do
        GrammarCategory.stub!(:find).and_return(mock_grammar_category(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested grammar_category" do
      GrammarCategory.should_receive(:find).with("37").and_return(mock_grammar_category)
      mock_grammar_category.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the grammar_categories list" do
      GrammarCategory.stub!(:find).and_return(mock_grammar_category(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(grammar_categories_url)
    end
  end

end
