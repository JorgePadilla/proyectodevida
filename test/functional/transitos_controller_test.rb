require 'test_helper'

class TransitosControllerTest < ActionController::TestCase
  setup do
    @transito = transitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transito" do
    assert_difference('Transito.count') do
      post :create, transito: { asesor_id: @transito.asesor_id, cantidad: @transito.cantidad, producto_id: @transito.producto_id }
    end

    assert_redirected_to transito_path(assigns(:transito))
  end

  test "should show transito" do
    get :show, id: @transito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transito
    assert_response :success
  end

  test "should update transito" do
    put :update, id: @transito, transito: { asesor_id: @transito.asesor_id, cantidad: @transito.cantidad, producto_id: @transito.producto_id }
    assert_redirected_to transito_path(assigns(:transito))
  end

  test "should destroy transito" do
    assert_difference('Transito.count', -1) do
      delete :destroy, id: @transito
    end

    assert_redirected_to transitos_path
  end
end
