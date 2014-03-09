class BuscadorController < ApplicationController

  def buscar
    #render :js => "alert('Blah')"
    nombre = params[:nombre]
    @xD=Rol.find_by_nombre(nombre).id
    respond_to do |format|
      format.js
    end
  end

end
