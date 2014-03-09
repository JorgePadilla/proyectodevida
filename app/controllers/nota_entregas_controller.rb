class NotaEntregasController < ApplicationController
  # GET /nota_entregas
  # GET /nota_entregas.json
  def index
    @nota_entregas = NotaEntrega.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nota_entregas }
    end
  end

  # GET /nota_entregas/1
  # GET /nota_entregas/1.json
  def show
    @nota_entrega = NotaEntrega.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nota_entrega }
    end
  end

  # GET /nota_entregas/new
  # GET /nota_entregas/new.json
  def new
    @nota_entrega = NotaEntrega.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nota_entrega }
    end
  end

  # GET /nota_entregas/1/edit
  def edit
    @nota_entrega = NotaEntrega.find(params[:id])
  end

  # POST /nota_entregas
  # POST /nota_entregas.json
  def create
    @nota_entrega = NotaEntrega.new(params[:nota_entrega])

    respond_to do |format|
      if @nota_entrega.save

				transito=@nota_entrega.transito
				transito.cantidad+=@nota_entrega.cantidad
				transito.save

				inventario=transito.inventario
				inventario.cantidad-=@nota_entrega.cantidad
				inventario.save

        format.html { redirect_to @nota_entrega, notice: 'Nota entrega was successfully created.' }
        format.json { render json: @nota_entrega, status: :created, location: @nota_entrega }
      else
        format.html { render action: "new" }
        format.json { render json: @nota_entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nota_entregas/1
  # PUT /nota_entregas/1.json
  def update
    @nota_entrega = NotaEntrega.find(params[:id])

    respond_to do |format|
      if @nota_entrega.update_attributes(params[:nota_entrega])
        format.html { redirect_to @nota_entrega, notice: 'Nota entrega was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nota_entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota_entregas/1
  # DELETE /nota_entregas/1.json
  def destroy
    @nota_entrega = NotaEntrega.find(params[:id])
    @nota_entrega.destroy

    respond_to do |format|
      format.html { redirect_to nota_entregas_url }
      format.json { head :no_content }
    end
  end
end
