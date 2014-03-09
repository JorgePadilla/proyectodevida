class EntradaInventariosController < ApplicationController
  # GET /entrada_inventarios
  # GET /entrada_inventarios.json
  def index
    @entrada_inventarios = EntradaInventario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entrada_inventarios }
    end
  end

  # GET /entrada_inventarios/1
  # GET /entrada_inventarios/1.json
  def show
    @entrada_inventario = EntradaInventario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entrada_inventario }
    end
  end

  # GET /entrada_inventarios/new
  # GET /entrada_inventarios/new.json
  def new
    @entrada_inventario = EntradaInventario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entrada_inventario }
    end
  end

  # GET /entrada_inventarios/1/edit
  def edit
    @entrada_inventario = EntradaInventario.find(params[:id])
  end

  # POST /entrada_inventarios
  # POST /entrada_inventarios.json
  def create
    @entrada_inventario = EntradaInventario.new(params[:entrada_inventario])

    respond_to do |format|
      if @entrada_inventario.save

				inventario=@entrada_inventario.inventario
				inventario.cantidad+=@entrada_inventario.cantidad
				inventario.save

        format.html { redirect_to @entrada_inventario, notice: 'Entrada inventario was successfully created.' }
        format.json { render json: @entrada_inventario, status: :created, location: @entrada_inventario }
      else
        format.html { render action: "new" }
        format.json { render json: @entrada_inventario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entrada_inventarios/1
  # PUT /entrada_inventarios/1.json
  def update
    @entrada_inventario = EntradaInventario.find(params[:id])

    respond_to do |format|
      if @entrada_inventario.update_attributes(params[:entrada_inventario])
        format.html { redirect_to @entrada_inventario, notice: 'Entrada inventario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entrada_inventario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrada_inventarios/1
  # DELETE /entrada_inventarios/1.json
  def destroy
    @entrada_inventario = EntradaInventario.find(params[:id])
    @entrada_inventario.destroy

    respond_to do |format|
      format.html { redirect_to entrada_inventarios_url }
      format.json { head :no_content }
    end
  end
end
