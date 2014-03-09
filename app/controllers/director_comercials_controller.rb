class DirectorComercialsController < ApplicationController
  # GET /director_comercials
  # GET /director_comercials.json
  def index
    @director_comercials = DirectorComercial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @director_comercials }
    end
  end

  # GET /director_comercials/1
  # GET /director_comercials/1.json
  def show
    @director_comercial = DirectorComercial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @director_comercial }
    end
  end

  # GET /director_comercials/new
  # GET /director_comercials/new.json
  def new
    @director_comercial = DirectorComercial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @director_comercial }
    end
  end

  # GET /director_comercials/1/edit
  def edit
    @director_comercial = DirectorComercial.find(params[:id])
  end

  # POST /director_comercials
  # POST /director_comercials.json
  def create
    @director_comercial = DirectorComercial.new(params[:director_comercial])

    respond_to do |format|
      if @director_comercial.save
        format.html { redirect_to @director_comercial, notice: 'Director comercial was successfully created.' }
        format.json { render json: @director_comercial, status: :created, location: @director_comercial }
      else
        format.html { render action: "new" }
        format.json { render json: @director_comercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /director_comercials/1
  # PUT /director_comercials/1.json
  def update
    @director_comercial = DirectorComercial.find(params[:id])

    respond_to do |format|
      if @director_comercial.update_attributes(params[:director_comercial])
        format.html { redirect_to @director_comercial, notice: 'Director comercial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @director_comercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /director_comercials/1
  # DELETE /director_comercials/1.json
  def destroy
    @director_comercial = DirectorComercial.find(params[:id])
    @director_comercial.destroy

    respond_to do |format|
      format.html { redirect_to director_comercials_url }
      format.json { head :no_content }
    end
  end
end
