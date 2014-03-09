class GerenteComercialsController < ApplicationController
  # GET /gerente_comercials
  # GET /gerente_comercials.json
  def index
    @gerente_comercials = GerenteComercial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gerente_comercials }
    end
  end

  # GET /gerente_comercials/1
  # GET /gerente_comercials/1.json
  def show
    @gerente_comercial = GerenteComercial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gerente_comercial }
    end
  end

  # GET /gerente_comercials/new
  # GET /gerente_comercials/new.json
  def new
    @gerente_comercial = GerenteComercial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gerente_comercial }
    end
  end

  # GET /gerente_comercials/1/edit
  def edit
    @gerente_comercial = GerenteComercial.find(params[:id])
  end

  # POST /gerente_comercials
  # POST /gerente_comercials.json
  def create
    @gerente_comercial = GerenteComercial.new(params[:gerente_comercial])

    respond_to do |format|
      if @gerente_comercial.save
        format.html { redirect_to @gerente_comercial, notice: 'Gerente comercial was successfully created.' }
        format.json { render json: @gerente_comercial, status: :created, location: @gerente_comercial }
      else
        format.html { render action: "new" }
        format.json { render json: @gerente_comercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gerente_comercials/1
  # PUT /gerente_comercials/1.json
  def update
    @gerente_comercial = GerenteComercial.find(params[:id])

    respond_to do |format|
      if @gerente_comercial.update_attributes(params[:gerente_comercial])
        format.html { redirect_to @gerente_comercial, notice: 'Gerente comercial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gerente_comercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gerente_comercials/1
  # DELETE /gerente_comercials/1.json
  def destroy
    @gerente_comercial = GerenteComercial.find(params[:id])
    @gerente_comercial.destroy

    respond_to do |format|
      format.html { redirect_to gerente_comercials_url }
      format.json { head :no_content }
    end
  end
end
