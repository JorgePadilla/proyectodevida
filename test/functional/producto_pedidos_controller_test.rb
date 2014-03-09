require 'test_helper'

class ProductoPedidosControllerTest < ActionController::TestCase
  setup do
    @producto_pedido = producto_pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_pedido" do
    assert_difference('ProductoPedido.count') do
      post :create, producto_pedido: { cantidad: @producto_pedido.cantidad, pedido_id: @producto_pedido.pedido_id, precio: @producto_pedido.precio, producto_id: @producto_pedido.producto_id }
    end

    assert_redirected_to producto_pedido_path(assigns(:producto_pedido))
  end

  test "should show producto_pedido" do
    get :show, id: @producto_pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_pedido
    assert_response :success
  end

  test "should update producto_pedido" do
    put :update, id: @producto_pedido, producto_pedido: { cantidad: @producto_pedido.cantidad, pedido_id: @producto_pedido.pedido_id, precio: @producto_pedido.precio, producto_id: @producto_pedido.producto_id }
    assert_redirected_to producto_pedido_path(assigns(:producto_pedido))
  end

  test "should destroy producto_pedido" do
    assert_difference('ProductoPedido.count', -1) do
      delete :destroy, id: @producto_pedido
    end

    assert_redirected_to producto_pedidos_path
  end
end
