require 'test_helper'

class EntradaInventariosControllerTest < ActionController::TestCase
  setup do
    @entrada_inventario = entrada_inventarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrada_inventarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrada_inventario" do
    assert_difference('EntradaInventario.count') do
      post :create, entrada_inventario: { cantidad: @entrada_inventario.cantidad, fecha: @entrada_inventario.fecha, inventario_id: @entrada_inventario.inventario_id, numero: @entrada_inventario.numero, proveedor: @entrada_inventario.proveedor, valor_unitario: @entrada_inventario.valor_unitario }
    end

    assert_redirected_to entrada_inventario_path(assigns(:entrada_inventario))
  end

  test "should show entrada_inventario" do
    get :show, id: @entrada_inventario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrada_inventario
    assert_response :success
  end

  test "should update entrada_inventario" do
    put :update, id: @entrada_inventario, entrada_inventario: { cantidad: @entrada_inventario.cantidad, fecha: @entrada_inventario.fecha, inventario_id: @entrada_inventario.inventario_id, numero: @entrada_inventario.numero, proveedor: @entrada_inventario.proveedor, valor_unitario: @entrada_inventario.valor_unitario }
    assert_redirected_to entrada_inventario_path(assigns(:entrada_inventario))
  end

  test "should destroy entrada_inventario" do
    assert_difference('EntradaInventario.count', -1) do
      delete :destroy, id: @entrada_inventario
    end

    assert_redirected_to entrada_inventarios_path
  end
end
