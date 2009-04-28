class GrammarItemsController < ApplicationController
  # GET /grammar_items
  # GET /grammar_items.xml
  def index
    @grammar_items = GrammarItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @grammar_items }
    end
  end

  # GET /grammar_items/1
  # GET /grammar_items/1.xml
  def show
    @grammar_item = GrammarItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @grammar_item }
    end
  end

  # GET /grammar_items/new
  # GET /grammar_items/new.xml
  def new
    @grammar_item = GrammarItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @grammar_item }
    end
  end

  # GET /grammar_items/1/edit
  def edit
    @grammar_item = GrammarItem.find(params[:id])
  end

  # POST /grammar_items
  # POST /grammar_items.xml
  def create
    @grammar_item = GrammarItem.new(params[:grammar_item])

    respond_to do |format|
      if @grammar_item.save
        flash[:notice] = 'GrammarItem was successfully created.'
        format.html { redirect_to(@grammar_item) }
        format.xml  { render :xml => @grammar_item, :status => :created, :location => @grammar_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @grammar_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /grammar_items/1
  # PUT /grammar_items/1.xml
  def update
    @grammar_item = GrammarItem.find(params[:id])

    respond_to do |format|
      if @grammar_item.update_attributes(params[:grammar_item])
        flash[:notice] = 'GrammarItem was successfully updated.'
        format.html { redirect_to(@grammar_item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @grammar_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /grammar_items/1
  # DELETE /grammar_items/1.xml
  def destroy
    @grammar_item = GrammarItem.find(params[:id])
    @grammar_item.destroy

    respond_to do |format|
      format.html { redirect_to(grammar_items_url) }
      format.xml  { head :ok }
    end
  end

  def translate
    @grammar_item = GrammarItem.find(params[:id])
    @grammar_item.translate
    
    respond_to do |format|
      
      if @grammar_item.save
        flash[:notice] = 'GrammarItem was successfully translated.'
        format.html { redirect_to(grammar_items_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "list" }
        format.xml  { render :xml => @grammar_item.errors, :status => :unprocessable_entity }
      end
    end
    
  end
end
