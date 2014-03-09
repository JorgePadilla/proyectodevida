class ProductoIngresosController < ApplicationController
  # GET /producto_ingresos
  # GET /producto_ingresos.json
  def index
    @producto_ingresos = ProductoIngreso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @producto_ingresos }
    end
  end

  # GET /producto_ingresos/1
  # GET /producto_ingresos/1.json
  def show
    @producto_ingreso = ProductoIngreso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @producto_ingreso }
    end
  end

  # GET /producto_ingresos/new
  # GET /producto_ingresos/new.json
  def new
    @producto_ingreso = ProductoIngreso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @producto_ingreso }
    end
  end

  # GET /producto_ingresos/1/edit
  def edit
    @producto_ingreso = ProductoIngreso.find(params[:id])
  end

  # POST /producto_ingresos
  # POST /producto_ingresos.json
  def create
    @producto_ingreso = ProductoIngreso.new(params[:producto_ingreso])

    respond_to do |format|
      if @producto_ingreso.save
        format.html { redirect_to @producto_ingreso, notice: 'Producto ingreso was successfully created.' }
        format.json { render json: @producto_ingreso, status: :created, location: @producto_ingreso }
      else
        format.html { render action: "new" }
        format.json { render json: @producto_ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /producto_ingresos/1
  # PUT /producto_ingresos/1.json
  def update
    @producto_ingreso = ProductoIngreso.find(params[:id])

    respond_to do |format|
      if @producto_ingreso.update_attributes(params[:producto_ingreso])
        format.html { redirect_to @producto_ingreso, notice: 'Producto ingreso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @producto_ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_ingresos/1
  # DELETE /producto_ingresos/1.json
  def destroy
    @producto_ingreso = ProductoIngreso.find(params[:id])
    @producto_ingreso.destroy

    respond_to do |format|
      format.html { redirect_to producto_ingresos_url }
      format.json { head :no_content }
    end
  end
end
