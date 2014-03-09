require 'test_helper'

class NotaDevolucionsControllerTest < ActionController::TestCase
  setup do
    @nota_devolucion = nota_devolucions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nota_devolucions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nota_devolucion" do
    assert_difference('NotaDevolucion.count') do
      post :create, nota_devolucion: { cantidad: @nota_devolucion.cantidad, fecha: @nota_devolucion.fecha, numero: @nota_devolucion.numero, transito_id: @nota_devolucion.transito_id }
    end

    assert_redirected_to nota_devolucion_path(assigns(:nota_devolucion))
  end

  test "should show nota_devolucion" do
    get :show, id: @nota_devolucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nota_devolucion
    assert_response :success
  end

  test "should update nota_devolucion" do
    put :update, id: @nota_devolucion, nota_devolucion: { cantidad: @nota_devolucion.cantidad, fecha: @nota_devolucion.fecha, numero: @nota_devolucion.numero, transito_id: @nota_devolucion.transito_id }
    assert_redirected_to nota_devolucion_path(assigns(:nota_devolucion))
  end

  test "should destroy nota_devolucion" do
    assert_difference('NotaDevolucion.count', -1) do
      delete :destroy, id: @nota_devolucion
    end

    assert_redirected_to nota_devolucions_path
  end
end
