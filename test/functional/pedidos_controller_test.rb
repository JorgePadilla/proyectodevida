require 'test_helper'

class PedidosControllerTest < ActionController::TestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post :create, pedido: { abono_inicial: @pedido.abono_inicial, alumno: @pedido.alumno, asesor_id: @pedido.asesor_id, cargo_cliente: @pedido.cargo_cliente, celular_cliente: @pedido.celular_cliente, ciudad: @pedido.ciudad, ciudad_cliente: @pedido.ciudad_cliente, codificador: @pedido.codificador, conyugue: @pedido.conyugue, correo_electronico: @pedido.correo_electronico, departamento_cliente: @pedido.departamento_cliente, direccion_cliente: @pedido.direccion_cliente, evento: @pedido.evento, fecha_fin_pago: @pedido.fecha_fin_pago, fecha_inicio_pago: @pedido.fecha_inicio_pago, fecha_pedido: @pedido.fecha_pedido, fin_hora_contacto: @pedido.fin_hora_contacto, grado: @pedido.grado, identidad_cliente: @pedido.identidad_cliente, inicio_hora_contacto: @pedido.inicio_hora_contacto, jornada: @pedido.jornada, nombre_cliente: @pedido.nombre_cliente, numero_cuotas: @pedido.numero_cuotas, referencia: @pedido.referencia, telefono_cliente: @pedido.telefono_cliente, telefono_referencia: @pedido.telefono_referencia, telefono_trabajo: @pedido.telefono_trabajo, trabajo_cliente: @pedido.trabajo_cliente, valor_credito: @pedido.valor_credito, valor_cuota: @pedido.valor_cuota }
    end

    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should show pedido" do
    get :show, id: @pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido
    assert_response :success
  end

  test "should update pedido" do
    put :update, id: @pedido, pedido: { abono_inicial: @pedido.abono_inicial, alumno: @pedido.alumno, asesor_id: @pedido.asesor_id, cargo_cliente: @pedido.cargo_cliente, celular_cliente: @pedido.celular_cliente, ciudad: @pedido.ciudad, ciudad_cliente: @pedido.ciudad_cliente, codificador: @pedido.codificador, conyugue: @pedido.conyugue, correo_electronico: @pedido.correo_electronico, departamento_cliente: @pedido.departamento_cliente, direccion_cliente: @pedido.direccion_cliente, evento: @pedido.evento, fecha_fin_pago: @pedido.fecha_fin_pago, fecha_inicio_pago: @pedido.fecha_inicio_pago, fecha_pedido: @pedido.fecha_pedido, fin_hora_contacto: @pedido.fin_hora_contacto, grado: @pedido.grado, identidad_cliente: @pedido.identidad_cliente, inicio_hora_contacto: @pedido.inicio_hora_contacto, jornada: @pedido.jornada, nombre_cliente: @pedido.nombre_cliente, numero_cuotas: @pedido.numero_cuotas, referencia: @pedido.referencia, telefono_cliente: @pedido.telefono_cliente, telefono_referencia: @pedido.telefono_referencia, telefono_trabajo: @pedido.telefono_trabajo, trabajo_cliente: @pedido.trabajo_cliente, valor_credito: @pedido.valor_credito, valor_cuota: @pedido.valor_cuota }
    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete :destroy, id: @pedido
    end

    assert_redirected_to pedidos_path
  end
end
