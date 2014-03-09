require 'test_helper'

class NotaEntregasControllerTest < ActionController::TestCase
  setup do
    @nota_entrega = nota_entregas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nota_entregas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nota_entrega" do
    assert_difference('NotaEntrega.count') do
      post :create, nota_entrega: { cantidad: @nota_entrega.cantidad, fecha: @nota_entrega.fecha, numero: @nota_entrega.numero, transito_id: @nota_entrega.transito_id }
    end

    assert_redirected_to nota_entrega_path(assigns(:nota_entrega))
  end

  test "should show nota_entrega" do
    get :show, id: @nota_entrega
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nota_entrega
    assert_response :success
  end

  test "should update nota_entrega" do
    put :update, id: @nota_entrega, nota_entrega: { cantidad: @nota_entrega.cantidad, fecha: @nota_entrega.fecha, numero: @nota_entrega.numero, transito_id: @nota_entrega.transito_id }
    assert_redirected_to nota_entrega_path(assigns(:nota_entrega))
  end

  test "should destroy nota_entrega" do
    assert_difference('NotaEntrega.count', -1) do
      delete :destroy, id: @nota_entrega
    end

    assert_redirected_to nota_entregas_path
  end
end
