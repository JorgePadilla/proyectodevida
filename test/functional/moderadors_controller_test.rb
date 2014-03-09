require 'test_helper'

class ModeradorsControllerTest < ActionController::TestCase
  setup do
    @moderador = moderadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moderadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moderador" do
    assert_difference('Moderador.count') do
      post :create, moderador: { comision_credito: @moderador.comision_credito, coordinador_id: @moderador.coordinador_id, nombre: @moderador.nombre }
    end

    assert_redirected_to moderador_path(assigns(:moderador))
  end

  test "should show moderador" do
    get :show, id: @moderador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moderador
    assert_response :success
  end

  test "should update moderador" do
    put :update, id: @moderador, moderador: { comision_credito: @moderador.comision_credito, coordinador_id: @moderador.coordinador_id, nombre: @moderador.nombre }
    assert_redirected_to moderador_path(assigns(:moderador))
  end

  test "should destroy moderador" do
    assert_difference('Moderador.count', -1) do
      delete :destroy, id: @moderador
    end

    assert_redirected_to moderadors_path
  end
end
