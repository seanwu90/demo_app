class UsetsController < ApplicationController
  # GET /usets
  # GET /usets.json
  def index
    @usets = Uset.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usets }
    end
  end

  # GET /usets/1
  # GET /usets/1.json
  def show
    @uset = Uset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uset }
    end
  end

  # GET /usets/new
  # GET /usets/new.json
  def new
    @uset = Uset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uset }
    end
  end

  # GET /usets/1/edit
  def edit
    @uset = Uset.find(params[:id])
  end

  # POST /usets
  # POST /usets.json
  def create
    @uset = Uset.new(params[:uset])

    respond_to do |format|
      if @uset.save
        format.html { redirect_to @uset, notice: 'Uset was successfully created.' }
        format.json { render json: @uset, status: :created, location: @uset }
      else
        format.html { render action: "new" }
        format.json { render json: @uset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usets/1
  # PUT /usets/1.json
  def update
    @uset = Uset.find(params[:id])

    respond_to do |format|
      if @uset.update_attributes(params[:uset])
        format.html { redirect_to @uset, notice: 'Uset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usets/1
  # DELETE /usets/1.json
  def destroy
    @uset = Uset.find(params[:id])
    @uset.destroy

    respond_to do |format|
      format.html { redirect_to usets_url }
      format.json { head :no_content }
    end
  end
end
