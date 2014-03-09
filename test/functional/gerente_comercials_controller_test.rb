require 'test_helper'

class GerenteComercialsControllerTest < ActionController::TestCase
  setup do
    @gerente_comercial = gerente_comercials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gerente_comercials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gerente_comercial" do
    assert_difference('GerenteComercial.count') do
      post :create, gerente_comercial: { comision_credito: @gerente_comercial.comision_credito, nombre: @gerente_comercial.nombre }
    end

    assert_redirected_to gerente_comercial_path(assigns(:gerente_comercial))
  end

  test "should show gerente_comercial" do
    get :show, id: @gerente_comercial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gerente_comercial
    assert_response :success
  end

  test "should update gerente_comercial" do
    put :update, id: @gerente_comercial, gerente_comercial: { comision_credito: @gerente_comercial.comision_credito, nombre: @gerente_comercial.nombre }
    assert_redirected_to gerente_comercial_path(assigns(:gerente_comercial))
  end

  test "should destroy gerente_comercial" do
    assert_difference('GerenteComercial.count', -1) do
      delete :destroy, id: @gerente_comercial
    end

    assert_redirected_to gerente_comercials_path
  end
end
