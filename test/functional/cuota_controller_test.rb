require 'test_helper'

class CuotaControllerTest < ActionController::TestCase
  setup do
    @cuotum = cuota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuotum" do
    assert_difference('Cuotum.count') do
      post :create, cuotum: { estado: @cuotum.estado, liquidacion: @cuotum.liquidacion }
    end

    assert_redirected_to cuotum_path(assigns(:cuotum))
  end

  test "should show cuotum" do
    get :show, id: @cuotum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cuotum
    assert_response :success
  end

  test "should update cuotum" do
    put :update, id: @cuotum, cuotum: { estado: @cuotum.estado, liquidacion: @cuotum.liquidacion }
    assert_redirected_to cuotum_path(assigns(:cuotum))
  end

  test "should destroy cuotum" do
    assert_difference('Cuotum.count', -1) do
      delete :destroy, id: @cuotum
    end

    assert_redirected_to cuota_path
  end
end
