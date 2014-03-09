module ApplicationHelper
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

  def usuariosAdministrador
    return Usuario.where(:rol_id=>1)
  end
  def usuariosReferenciacion
    return Usuario.where(:rol_id=>2)
  end
  def usuariosAsistente
    return Usuario.where(:rol_id=>3)
  end
  def usuariosCobranza
    return Usuario.where(:rol_id=>4)
  end


  def getValorCuotaInt pedido_id
    p=Pedido.find_by_id(pedido_id)
    return (p.valor_credito-p.abono_inicial)/p.numero_cuotas
  end

  def getValorCuota pedido_id
    p=Pedido.find_by_id(pedido_id)
    return number_to_currency((p.valor_credito-p.abono_inicial)/p.numero_cuotas, :format => "%n")
  end



  def getSaldoInt (pedido_id, num_cuota)
    pedido=Pedido.find_by_id(pedido_id)
    cuotas=pedido.cuota
    valor_cuota=getValorCuotaInt pedido_id

    credito_actual=pedido.valor_credito-pedido.abono_inicial
    
    i=0
    while i<cuotas.size
      if cuotas[i].estado=="Pagado" && cuotas[i].num_cuota<=num_cuota
        credito_actual-=valor_cuota
      end
      i+=1
    end
    return credito_actual
  end


  def getSaldo (pedido_id, num_cuota)
    pedido=Pedido.find_by_id(pedido_id)
    cuotas=pedido.cuota
    valor_cuota=getValorCuotaInt pedido_id

    credito_actual=pedido.valor_credito-pedido.abono_inicial
    
    i=0
    while i<cuotas.size
      if cuotas[i].estado=="Pagado" && cuotas[i].num_cuota<=num_cuota
        credito_actual-=valor_cuota
      end
      i+=1
    end
    return number_to_currency(credito_actual, :format => "%n")
  end


	def getCantPedidosPorNumCuota num_cuota
		res=0
		Pedido.all.each do |p|
			c=p.cuota.where(:estado=>"Pendiente",:num_cuota=>num_cuota)
			c_ant=p.cuota.where(:estado=>"Pendiente",:num_cuota=>num_cuota-1)
			if(c_ant.count==0 && c.count!=0)
				res+=1
			end
		end
		return res
	end

	def getCantPedidosPorNumCuotaSinAsignar num_cuota
		res=0
		Pedido.all.each do |p|
			c=p.cuota.where(:estado=>"Pendiente",:num_cuota=>num_cuota,:usuario_id=>nil)
			c_ant=p.cuota.where(:estado=>"Pendiente",:num_cuota=>num_cuota-1)
			if(c_ant.count==0 && c.count!=0)
				res+=1
			end
		end
		return res
	end
end
