class AsesorsController < ApplicationController
  # GET /asesors
  # GET /asesors.json
  def index
    @asesors = Asesor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asesors }
    end
  end

  # GET /asesors/1
  # GET /asesors/1.json
  def show
    @asesor = Asesor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asesor }
    end
  end

  # GET /asesors/new
  # GET /asesors/new.json
  def new
    @asesor = Asesor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asesor }
    end
  end

  # GET /asesors/1/edit
  def edit
    @asesor = Asesor.find(params[:id])
  end

  # POST /asesors
  # POST /asesors.json
  def create
    @asesor = Asesor.new(params[:asesor])

    respond_to do |format|
      if @asesor.save
        format.html { redirect_to @asesor, notice: 'Asesor was successfully created.' }
        format.json { render json: @asesor, status: :created, location: @asesor }
      else
        format.html { render action: "new" }
        format.json { render json: @asesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asesors/1
  # PUT /asesors/1.json
  def update
    @asesor = Asesor.find(params[:id])

    respond_to do |format|
      if @asesor.update_attributes(params[:asesor])
        format.html { redirect_to @asesor, notice: 'Asesor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asesors/1
  # DELETE /asesors/1.json
  def destroy
    @asesor = Asesor.find(params[:id])
    @asesor.destroy

    respond_to do |format|
      format.html { redirect_to asesors_url }
      format.json { head :no_content }
    end
  end
end
