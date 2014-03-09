class CoordinadorsController < ApplicationController
  # GET /coordinadors
  # GET /coordinadors.json
  def index
    @coordinadors = Coordinador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coordinadors }
    end
  end

  # GET /coordinadors/1
  # GET /coordinadors/1.json
  def show
    @coordinador = Coordinador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coordinador }
    end
  end

  # GET /coordinadors/new
  # GET /coordinadors/new.json
  def new
    @coordinador = Coordinador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coordinador }
    end
  end

  # GET /coordinadors/1/edit
  def edit
    @coordinador = Coordinador.find(params[:id])
  end

  # POST /coordinadors
  # POST /coordinadors.json
  def create
    @coordinador = Coordinador.new(params[:coordinador])

    respond_to do |format|
      if @coordinador.save
        format.html { redirect_to @coordinador, notice: 'Coordinador was successfully created.' }
        format.json { render json: @coordinador, status: :created, location: @coordinador }
      else
        format.html { render action: "new" }
        format.json { render json: @coordinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coordinadors/1
  # PUT /coordinadors/1.json
  def update
    @coordinador = Coordinador.find(params[:id])

    respond_to do |format|
      if @coordinador.update_attributes(params[:coordinador])
        format.html { redirect_to @coordinador, notice: 'Coordinador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coordinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinadors/1
  # DELETE /coordinadors/1.json
  def destroy
    @coordinador = Coordinador.find(params[:id])
    @coordinador.destroy

    respond_to do |format|
      format.html { redirect_to coordinadors_url }
      format.json { head :no_content }
    end
  end
end
