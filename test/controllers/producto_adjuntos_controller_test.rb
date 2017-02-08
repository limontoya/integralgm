require 'test_helper'

class ProductoAdjuntosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto_adjunto = producto_adjuntos(:one)
  end

  test "should get index" do
    get producto_adjuntos_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_adjunto_url
    assert_response :success
  end

  test "should create producto_adjunto" do
    assert_difference('ProductoAdjunto.count') do
      post producto_adjuntos_url, params: { producto_adjunto: { avatar: @producto_adjunto.avatar, producto_id: @producto_adjunto.producto_id } }
    end

    assert_redirected_to producto_adjunto_url(ProductoAdjunto.last)
  end

  test "should show producto_adjunto" do
    get producto_adjunto_url(@producto_adjunto)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_adjunto_url(@producto_adjunto)
    assert_response :success
  end

  test "should update producto_adjunto" do
    patch producto_adjunto_url(@producto_adjunto), params: { producto_adjunto: { avatar: @producto_adjunto.avatar, producto_id: @producto_adjunto.producto_id } }
    assert_redirected_to producto_adjunto_url(@producto_adjunto)
  end

  test "should destroy producto_adjunto" do
    assert_difference('ProductoAdjunto.count', -1) do
      delete producto_adjunto_url(@producto_adjunto)
    end

    assert_redirected_to producto_adjuntos_url
  end
end
