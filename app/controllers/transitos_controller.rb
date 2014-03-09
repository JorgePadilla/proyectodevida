class TransitosController < ApplicationController
  # GET /transitos
  # GET /transitos.json
  def index
    @transitos = Transito.includes(:inventario).includes(:asesor).all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transitos }
    end
  end

  # GET /transitos/1
  # GET /transitos/1.json
  def show
    @transito = Transito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transito }
    end
  end

  # GET /transitos/new
  # GET /transitos/new.json
  def new
    @transito = Transito.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transito }
    end
  end

  # GET /transitos/1/edit
  def edit
    @transito = Transito.find(params[:id])
  end

  # POST /transitos
  # POST /transitos.json
  def create
    @transito = Transito.new(params[:transito])

    respond_to do |format|
      if @transito.save
        format.html { redirect_to @transito, notice: 'Transito was successfully created.' }
        format.json { render json: @transito, status: :created, location: @transito }
      else
        format.html { render action: "new" }
        format.json { render json: @transito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transitos/1
  # PUT /transitos/1.json
  def update
    @transito = Transito.find(params[:id])

    respond_to do |format|
      if @transito.update_attributes(params[:transito])
        format.html { redirect_to @transito, notice: 'Transito was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transitos/1
  # DELETE /transitos/1.json
  def destroy
    @transito = Transito.find(params[:id])
    @transito.destroy

    respond_to do |format|
      format.html { redirect_to transitos_url }
      format.json { head :no_content }
    end
  end

  def buscartransito
    asesor=params[:asesor]
    if asesor==[""]
      asesor=""
    end
    inventario=params[:producto]
    if inventario==[""]
      inventario=""
    end

    str=""

    if asesor!=""
      str+="asesor_id = "+ Asesor.find_by_nombre(asesor).id.to_s + " "
    end

    if inventario!=""
      if str!=""
        str+= "and "
      end
      str+="inventario_id = "+ Inventario.find_by_nombre(inventario).id.to_s + " "
    end

    @transitos = Transito.where(str)

    render :index
  end
end
