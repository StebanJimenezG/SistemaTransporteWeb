require 'test_helper'

class PasajerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pasajero = pasajeros(:one)
  end

  test "should get index" do
    get pasajeros_url
    assert_response :success
  end

  test "should get new" do
    get new_pasajero_url
    assert_response :success
  end

  test "should create pasajero" do
    assert_difference('Pasajero.count') do
      post pasajeros_url, params: { pasajero: { nombre: @pasajero.nombre } }
    end

    assert_redirected_to pasajero_url(Pasajero.last)
  end

  test "should show pasajero" do
    get pasajero_url(@pasajero)
    assert_response :success
  end

  test "should get edit" do
    get edit_pasajero_url(@pasajero)
    assert_response :success
  end

  test "should update pasajero" do
    patch pasajero_url(@pasajero), params: { pasajero: { nombre: @pasajero.nombre } }
    assert_redirected_to pasajero_url(@pasajero)
  end

  test "should destroy pasajero" do
    assert_difference('Pasajero.count', -1) do
      delete pasajero_url(@pasajero)
    end

    assert_redirected_to pasajeros_url
  end
end
