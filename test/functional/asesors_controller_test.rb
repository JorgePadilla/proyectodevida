require 'test_helper'

class AsesorsControllerTest < ActionController::TestCase
  setup do
    @asesor = asesors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asesors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asesor" do
    assert_difference('Asesor.count') do
      post :create, asesor: { comision_contado_asesor: @asesor.comision_contado_asesor, comision_contado_empresa: @asesor.comision_contado_empresa, comision_credito: @asesor.comision_credito, identidad: @asesor.identidad, moderador_id: @asesor.moderador_id, nombre: @asesor.nombre }
    end

    assert_redirected_to asesor_path(assigns(:asesor))
  end

  test "should show asesor" do
    get :show, id: @asesor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asesor
    assert_response :success
  end

  test "should update asesor" do
    put :update, id: @asesor, asesor: { comision_contado_asesor: @asesor.comision_contado_asesor, comision_contado_empresa: @asesor.comision_contado_empresa, comision_credito: @asesor.comision_credito, identidad: @asesor.identidad, moderador_id: @asesor.moderador_id, nombre: @asesor.nombre }
    assert_redirected_to asesor_path(assigns(:asesor))
  end

  test "should destroy asesor" do
    assert_difference('Asesor.count', -1) do
      delete :destroy, id: @asesor
    end

    assert_redirected_to asesors_path
  end
end
