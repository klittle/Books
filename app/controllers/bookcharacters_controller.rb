class BookcharactersController < ApplicationController
  # GET /bookcharacters
  # GET /bookcharacters.xml
  def index
    @bookcharacters = Bookcharacter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bookcharacters }
    end
  end

  # GET /bookcharacters/1
  # GET /bookcharacters/1.xml
  def show
    @bookcharacter = Bookcharacter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bookcharacter }
    end
  end

  # GET /bookcharacters/new
  # GET /bookcharacters/new.xml
  def new
    @bookcharacter = Bookcharacter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bookcharacter }
    end
  end

  # GET /bookcharacters/1/edit
  def edit
    @bookcharacter = Book.Bookcharacter.find(params[:id])
  end

  # POST /bookcharacters
  # POST /bookcharacters.xml
  def create
    @bookcharacter = Bookcharacter.new(params[:bookcharacter])

    respond_to do |format|
      if @bookcharacter.save
        flash[:notice] = 'Bookcharacter was successfully created.'
        format.html { redirect_to(@bookcharacter) }
        format.xml  { render :xml => @bookcharacter, :status => :created, :location => @bookcharacter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bookcharacter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bookcharacters/1
  # PUT /bookcharacters/1.xml
  def update
    @bookcharacter = Bookcharacter.find(params[:id])

    respond_to do |format|
      if @bookcharacter.update_attributes(params[:bookcharacter])
        flash[:notice] = 'Bookcharacter was successfully updated.'
        format.html { redirect_to(@bookcharacter) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bookcharacter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bookcharacters/1
  # DELETE /bookcharacters/1.xml
  def destroy
    @bookcharacter = Bookcharacter.find(params[:id])
    @bookcharacter.destroy

    respond_to do |format|
      format.html { redirect_to(bookcharacters_url) }
      format.xml  { head :ok }
    end
  end
end
