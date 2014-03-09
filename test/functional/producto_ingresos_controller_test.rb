require 'test_helper'

class ProductoIngresosControllerTest < ActionController::TestCase
  setup do
    @producto_ingreso = producto_ingresos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_ingresos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_ingreso" do
    assert_difference('ProductoIngreso.count') do
      post :create, producto_ingreso: { cantidad_ingreso: @producto_ingreso.cantidad_ingreso, documento_ingreso: @producto_ingreso.documento_ingreso, fecha_ingreso: @producto_ingreso.fecha_ingreso, producto_id: @producto_ingreso.producto_id, valor_producto: @producto_ingreso.valor_producto }
    end

    assert_redirected_to producto_ingreso_path(assigns(:producto_ingreso))
  end

  test "should show producto_ingreso" do
    get :show, id: @producto_ingreso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_ingreso
    assert_response :success
  end

  test "should update producto_ingreso" do
    put :update, id: @producto_ingreso, producto_ingreso: { cantidad_ingreso: @producto_ingreso.cantidad_ingreso, documento_ingreso: @producto_ingreso.documento_ingreso, fecha_ingreso: @producto_ingreso.fecha_ingreso, producto_id: @producto_ingreso.producto_id, valor_producto: @producto_ingreso.valor_producto }
    assert_redirected_to producto_ingreso_path(assigns(:producto_ingreso))
  end

  test "should destroy producto_ingreso" do
    assert_difference('ProductoIngreso.count', -1) do
      delete :destroy, id: @producto_ingreso
    end

    assert_redirected_to producto_ingresos_path
  end
end
