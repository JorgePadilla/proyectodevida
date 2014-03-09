class NotaDevolucionsController < ApplicationController
  # GET /nota_devolucions
  # GET /nota_devolucions.json
  def index
    @nota_devolucions = NotaDevolucion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nota_devolucions }
    end
  end

  # GET /nota_devolucions/1
  # GET /nota_devolucions/1.json
  def show
    @nota_devolucion = NotaDevolucion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nota_devolucion }
    end
  end

  # GET /nota_devolucions/new
  # GET /nota_devolucions/new.json
  def new
    @nota_devolucion = NotaDevolucion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nota_devolucion }
    end
  end

  # GET /nota_devolucions/1/edit
  def edit
    @nota_devolucion = NotaDevolucion.find(params[:id])
  end

  # POST /nota_devolucions
  # POST /nota_devolucions.json
  def create
    @nota_devolucion = NotaDevolucion.new(params[:nota_devolucion])

    respond_to do |format|
      if @nota_devolucion.save

				transito=@nota_devolucion.transito
				transito.cantidad-=@nota_devolucion.cantidad
				transito.save

				inventario=transito.inventario
				inventario.cantidad+=@nota_devolucion.cantidad
				inventario.save

        format.html { redirect_to @nota_devolucion, notice: 'Nota devolucion was successfully created.' }
        format.json { render json: @nota_devolucion, status: :created, location: @nota_devolucion }
      else
        format.html { render action: "new" }
        format.json { render json: @nota_devolucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nota_devolucions/1
  # PUT /nota_devolucions/1.json
  def update
    @nota_devolucion = NotaDevolucion.find(params[:id])

    respond_to do |format|
      if @nota_devolucion.update_attributes(params[:nota_devolucion])
        format.html { redirect_to @nota_devolucion, notice: 'Nota devolucion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nota_devolucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota_devolucions/1
  # DELETE /nota_devolucions/1.json
  def destroy
    @nota_devolucion = NotaDevolucion.find(params[:id])
    @nota_devolucion.destroy

    respond_to do |format|
      format.html { redirect_to nota_devolucions_url }
      format.json { head :no_content }
    end
  end
end
