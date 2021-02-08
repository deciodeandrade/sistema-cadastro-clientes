require 'test_helper'

class ContatoTelefonicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contato_telefonico = contato_telefonicos(:one)
  end

  test "should get index" do
    get contato_telefonicos_url
    assert_response :success
  end

  test "should get new" do
    get new_contato_telefonico_url
    assert_response :success
  end

  test "should create contato_telefonico" do
    assert_difference('ContatoTelefonico.count') do
      post contato_telefonicos_url, params: { contato_telefonico: { ramal: @contato_telefonico.ramal, responsavel_id: @contato_telefonico.responsavel_id, telefone_celular: @contato_telefonico.telefone_celular, telefone_fixo: @contato_telefonico.telefone_fixo } }
    end

    assert_redirected_to contato_telefonico_url(ContatoTelefonico.last)
  end

  test "should show contato_telefonico" do
    get contato_telefonico_url(@contato_telefonico)
    assert_response :success
  end

  test "should get edit" do
    get edit_contato_telefonico_url(@contato_telefonico)
    assert_response :success
  end

  test "should update contato_telefonico" do
    patch contato_telefonico_url(@contato_telefonico), params: { contato_telefonico: { ramal: @contato_telefonico.ramal, responsavel_id: @contato_telefonico.responsavel_id, telefone_celular: @contato_telefonico.telefone_celular, telefone_fixo: @contato_telefonico.telefone_fixo } }
    assert_redirected_to contato_telefonico_url(@contato_telefonico)
  end

  test "should destroy contato_telefonico" do
    assert_difference('ContatoTelefonico.count', -1) do
      delete contato_telefonico_url(@contato_telefonico)
    end

    assert_redirected_to contato_telefonicos_url
  end
end
