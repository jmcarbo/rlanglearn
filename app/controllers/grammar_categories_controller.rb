class GrammarCategoriesController < ApplicationController
  # GET /grammar_categories
  # GET /grammar_categories.xml
  def index
    @grammar_categories = GrammarCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @grammar_categories }
    end
  end

  # GET /grammar_categories/1
  # GET /grammar_categories/1.xml
  def show
    @grammar_category = GrammarCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @grammar_category }
    end
  end

  # GET /grammar_categories/new
  # GET /grammar_categories/new.xml
  def new
    @grammar_category = GrammarCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @grammar_category }
    end
  end

  # GET /grammar_categories/1/edit
  def edit
    @grammar_category = GrammarCategory.find(params[:id])
  end

  # POST /grammar_categories
  # POST /grammar_categories.xml
  def create
    @grammar_category = GrammarCategory.new(params[:grammar_category])

    respond_to do |format|
      if @grammar_category.save
        flash[:notice] = 'GrammarCategory was successfully created.'
        format.html { redirect_to(@grammar_category) }
        format.xml  { render :xml => @grammar_category, :status => :created, :location => @grammar_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @grammar_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /grammar_categories/1
  # PUT /grammar_categories/1.xml
  def update
    @grammar_category = GrammarCategory.find(params[:id])

    respond_to do |format|
      if @grammar_category.update_attributes(params[:grammar_category])
        flash[:notice] = 'GrammarCategory was successfully updated.'
        format.html { redirect_to(@grammar_category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @grammar_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /grammar_categories/1
  # DELETE /grammar_categories/1.xml
  def destroy
    @grammar_category = GrammarCategory.find(params[:id])
    @grammar_category.destroy

    respond_to do |format|
      format.html { redirect_to(grammar_categories_url) }
      format.xml  { head :ok }
    end
  end
end
