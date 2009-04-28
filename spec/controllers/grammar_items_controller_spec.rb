require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GrammarItemsController do

  def mock_grammar_item(stubs={})
    @mock_grammar_item ||= mock_model(GrammarItem, stubs)
  end
  
  describe "GET index" do
    it "assigns all grammar_items as @grammar_items" do
      GrammarItem.should_receive(:find).with(:all).and_return([mock_grammar_item])
      get :index
      assigns[:grammar_items].should == [mock_grammar_item]
    end
  end

  describe "GET show" do
    it "assigns the requested grammar_item as @grammar_item" do
      GrammarItem.should_receive(:find).with("37").and_return(mock_grammar_item)
      get :show, :id => "37"
      assigns[:grammar_item].should equal(mock_grammar_item)
    end
  end

  describe "GET new" do
    it "assigns a new grammar_item as @grammar_item" do
      GrammarItem.should_receive(:new).and_return(mock_grammar_item)
      get :new
      assigns[:grammar_item].should equal(mock_grammar_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested grammar_item as @grammar_item" do
      GrammarItem.should_receive(:find).with("37").and_return(mock_grammar_item)
      get :edit, :id => "37"
      assigns[:grammar_item].should equal(mock_grammar_item)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created grammar_item as @grammar_item" do
        GrammarItem.should_receive(:new).with({'these' => 'params'}).and_return(mock_grammar_item(:save => true))
        post :create, :grammar_item => {:these => 'params'}
        assigns[:grammar_item].should equal(mock_grammar_item)
      end

      it "redirects to the created grammar_item" do
        GrammarItem.stub!(:new).and_return(mock_grammar_item(:save => true))
        post :create, :grammar_item => {}
        response.should redirect_to(grammar_item_url(mock_grammar_item))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved grammar_item as @grammar_item" do
        GrammarItem.stub!(:new).with({'these' => 'params'}).and_return(mock_grammar_item(:save => false))
        post :create, :grammar_item => {:these => 'params'}
        assigns[:grammar_item].should equal(mock_grammar_item)
      end

      it "re-renders the 'new' template" do
        GrammarItem.stub!(:new).and_return(mock_grammar_item(:save => false))
        post :create, :grammar_item => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT udpate" do
    
    describe "with valid params" do
      it "updates the requested grammar_item" do
        GrammarItem.should_receive(:find).with("37").and_return(mock_grammar_item)
        mock_grammar_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :grammar_item => {:these => 'params'}
      end

      it "assigns the requested grammar_item as @grammar_item" do
        GrammarItem.stub!(:find).and_return(mock_grammar_item(:update_attributes => true))
        put :update, :id => "1"
        assigns[:grammar_item].should equal(mock_grammar_item)
      end

      it "redirects to the grammar_item" do
        GrammarItem.stub!(:find).and_return(mock_grammar_item(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(grammar_item_url(mock_grammar_item))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested grammar_item" do
        GrammarItem.should_receive(:find).with("37").and_return(mock_grammar_item)
        mock_grammar_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :grammar_item => {:these => 'params'}
      end

      it "assigns the grammar_item as @grammar_item" do
        GrammarItem.stub!(:find).and_return(mock_grammar_item(:update_attributes => false))
        put :update, :id => "1"
        assigns[:grammar_item].should equal(mock_grammar_item)
      end

      it "re-renders the 'edit' template" do
        GrammarItem.stub!(:find).and_return(mock_grammar_item(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested grammar_item" do
      GrammarItem.should_receive(:find).with("37").and_return(mock_grammar_item)
      mock_grammar_item.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the grammar_items list" do
      GrammarItem.stub!(:find).and_return(mock_grammar_item(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(grammar_items_url)
    end
  end

end
