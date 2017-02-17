require 'test_helper'

class ContactosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacto = contactos(:one)
  end

  test "should get index" do
    get contactos_url
    assert_response :success
  end

  test "should get new" do
    get new_contacto_url
    assert_response :success
  end

  test "should create contacto" do
    assert_difference('Contacto.count') do
      post contactos_url, params: { contacto: { ciudad: @contacto.ciudad, codigozip: @contacto.codigozip, correo: @contacto.correo, cotizacionpdf: @contacto.cotizacionpdf, nombre: @contacto.nombre, peticion: @contacto.peticion, telefono: @contacto.telefono, titulo: @contacto.titulo } }
    end

    assert_redirected_to contacto_url(Contacto.last)
  end

  test "should show contacto" do
    get contacto_url(@contacto)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacto_url(@contacto)
    assert_response :success
  end

  test "should update contacto" do
    patch contacto_url(@contacto), params: { contacto: { ciudad: @contacto.ciudad, codigozip: @contacto.codigozip, correo: @contacto.correo, cotizacionpdf: @contacto.cotizacionpdf, nombre: @contacto.nombre, peticion: @contacto.peticion, telefono: @contacto.telefono, titulo: @contacto.titulo } }
    assert_redirected_to contacto_url(@contacto)
  end

  test "should destroy contacto" do
    assert_difference('Contacto.count', -1) do
      delete contacto_url(@contacto)
    end

    assert_redirected_to contactos_url
  end
end
