require 'test_helper'

class DirectorComercialsControllerTest < ActionController::TestCase
  setup do
    @director_comercial = director_comercials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:director_comercials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create director_comercial" do
    assert_difference('DirectorComercial.count') do
      post :create, director_comercial: { comision_credito: @director_comercial.comision_credito, gerente_comercial_id: @director_comercial.gerente_comercial_id, nombre: @director_comercial.nombre }
    end

    assert_redirected_to director_comercial_path(assigns(:director_comercial))
  end

  test "should show director_comercial" do
    get :show, id: @director_comercial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @director_comercial
    assert_response :success
  end

  test "should update director_comercial" do
    put :update, id: @director_comercial, director_comercial: { comision_credito: @director_comercial.comision_credito, gerente_comercial_id: @director_comercial.gerente_comercial_id, nombre: @director_comercial.nombre }
    assert_redirected_to director_comercial_path(assigns(:director_comercial))
  end

  test "should destroy director_comercial" do
    assert_difference('DirectorComercial.count', -1) do
      delete :destroy, id: @director_comercial
    end

    assert_redirected_to director_comercials_path
  end
end
