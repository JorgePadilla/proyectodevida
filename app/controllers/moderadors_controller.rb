class ModeradorsController < ApplicationController
  # GET /moderadors
  # GET /moderadors.json
  def index
    @moderadors = Moderador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @moderadors }
    end
  end

  # GET /moderadors/1
  # GET /moderadors/1.json
  def show
    @moderador = Moderador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @moderador }
    end
  end

  # GET /moderadors/new
  # GET /moderadors/new.json
  def new
    @moderador = Moderador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @moderador }
    end
  end

  # GET /moderadors/1/edit
  def edit
    @moderador = Moderador.find(params[:id])
  end

  # POST /moderadors
  # POST /moderadors.json
  def create
    @moderador = Moderador.new(params[:moderador])

    respond_to do |format|
      if @moderador.save
        format.html { redirect_to @moderador, notice: 'Moderador was successfully created.' }
        format.json { render json: @moderador, status: :created, location: @moderador }
      else
        format.html { render action: "new" }
        format.json { render json: @moderador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /moderadors/1
  # PUT /moderadors/1.json
  def update
    @moderador = Moderador.find(params[:id])

    respond_to do |format|
      if @moderador.update_attributes(params[:moderador])
        format.html { redirect_to @moderador, notice: 'Moderador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @moderador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moderadors/1
  # DELETE /moderadors/1.json
  def destroy
    @moderador = Moderador.find(params[:id])
    @moderador.destroy

    respond_to do |format|
      format.html { redirect_to moderadors_url }
      format.json { head :no_content }
    end
  end
end
