require 'test_helper'

class PermisosPorRolsControllerTest < ActionController::TestCase
  setup do
    @permisos_por_rol = permisos_por_rols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permisos_por_rols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permisos_por_rol" do
    assert_difference('PermisosPorRol.count') do
      post :create, permisos_por_rol: { permiso_id: @permisos_por_rol.permiso_id, rol_id: @permisos_por_rol.rol_id }
    end

    assert_redirected_to permisos_por_rol_path(assigns(:permisos_por_rol))
  end

  test "should show permisos_por_rol" do
    get :show, id: @permisos_por_rol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permisos_por_rol
    assert_response :success
  end

  test "should update permisos_por_rol" do
    put :update, id: @permisos_por_rol, permisos_por_rol: { permiso_id: @permisos_por_rol.permiso_id, rol_id: @permisos_por_rol.rol_id }
    assert_redirected_to permisos_por_rol_path(assigns(:permisos_por_rol))
  end

  test "should destroy permisos_por_rol" do
    assert_difference('PermisosPorRol.count', -1) do
      delete :destroy, id: @permisos_por_rol
    end

    assert_redirected_to permisos_por_rols_path
  end
end
