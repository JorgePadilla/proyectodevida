class PermisosPorRolsController < ApplicationController
  # GET /permisos_por_rols
  # GET /permisos_por_rols.json
  def index
    @permisos_por_rols = PermisosPorRol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @permisos_por_rols }
    end
  end

  # GET /permisos_por_rols/1
  # GET /permisos_por_rols/1.json
  def show
    @permisos_por_rol = PermisosPorRol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @permisos_por_rol }
    end
  end

  # GET /permisos_por_rols/new
  # GET /permisos_por_rols/new.json
  def new
    @permisos_por_rol = PermisosPorRol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @permisos_por_rol }
    end
  end

  # GET /permisos_por_rols/1/edit
  def edit
    @permisos_por_rol = PermisosPorRol.find(params[:id])
  end

  # POST /permisos_por_rols
  # POST /permisos_por_rols.json
  def create
    @permisos_por_rol = PermisosPorRol.new(params[:permisos_por_rol])

    respond_to do |format|
      if @permisos_por_rol.save
        format.html { redirect_to @permisos_por_rol, notice: 'Permisos por rol was successfully created.' }
        format.json { render json: @permisos_por_rol, status: :created, location: @permisos_por_rol }
      else
        format.html { render action: "new" }
        format.json { render json: @permisos_por_rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /permisos_por_rols/1
  # PUT /permisos_por_rols/1.json
  def update
    @permisos_por_rol = PermisosPorRol.find(params[:id])

    respond_to do |format|
      if @permisos_por_rol.update_attributes(params[:permisos_por_rol])
        format.html { redirect_to @permisos_por_rol, notice: 'Permisos por rol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @permisos_por_rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permisos_por_rols/1
  # DELETE /permisos_por_rols/1.json
  def destroy
    @permisos_por_rol = PermisosPorRol.find(params[:id])
    @permisos_por_rol.destroy

    respond_to do |format|
      format.html { redirect_to permisos_por_rols_url }
      format.json { head :no_content }
    end
  end
end
