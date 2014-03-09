require 'test_helper'

class CoordinadorsControllerTest < ActionController::TestCase
  setup do
    @coordinador = coordinadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coordinadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coordinador" do
    assert_difference('Coordinador.count') do
      post :create, coordinador: { comision_credito: @coordinador.comision_credito, director_comercial_id: @coordinador.director_comercial_id, nombre: @coordinador.nombre }
    end

    assert_redirected_to coordinador_path(assigns(:coordinador))
  end

  test "should show coordinador" do
    get :show, id: @coordinador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coordinador
    assert_response :success
  end

  test "should update coordinador" do
    put :update, id: @coordinador, coordinador: { comision_credito: @coordinador.comision_credito, director_comercial_id: @coordinador.director_comercial_id, nombre: @coordinador.nombre }
    assert_redirected_to coordinador_path(assigns(:coordinador))
  end

  test "should destroy coordinador" do
    assert_difference('Coordinador.count', -1) do
      delete :destroy, id: @coordinador
    end

    assert_redirected_to coordinadors_path
  end
end
