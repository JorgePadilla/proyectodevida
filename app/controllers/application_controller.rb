class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  private

  def current_user
    @current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end

  def crearCuotas numero_cuotas,pedido_id
    i=0
    while i<numero_cuotas
      c = Cuotum.new
      c.pedido_id=pedido_id
      c.estado="Pendiente"
      c.num_cuota=i+1
      c.save
      i+=1
    end
  end

  def aplicaDescuento fecha_pedido, fecha_cuota, dias_descuento, numero_cuota
    fecha_ideal=fecha_pedido
    fecha_ideal=fecha_ideal>>(numero_cuota-1)
    fecha_ideal=fecha_ideal+(dias_descuento)

    return fecha_cuota<=fecha_ideal
  end

  def aplicaMora fecha_pedido, fecha_cuota, dias_mora, numero_cuota
    fecha_ideal=fecha_pedido
    fecha_ideal=fecha_ideal>>(numero_cuota)
    fecha_ideal=fecha_ideal+(dias_mora)

    return fecha_cuota>fecha_ideal
  end


  def soyAdministrador
    if current_user == nil
      return false
    end
    if current_user.rol.id == 1
      return true
    end
    return false
  end
  def soyReferenciacion
    if current_user == nil
      return false
    end
    if current_user.rol.id == 2
      return true
    end
    return false
  end
  def soyAsistente
    if current_user == nil
      return false
    end
    if current_user.rol.id == 3
      return true
    end
    return false
  end
  def soyCobranza
    if current_user == nil
      return false
    end
    if current_user.rol.id == 4
      return true
    end
    return false
  end
end
