require "application_system_test_case"

class ContatoTelefonicosTest < ApplicationSystemTestCase
  setup do
    @contato_telefonico = contato_telefonicos(:one)
  end

  test "visiting the index" do
    visit contato_telefonicos_url
    assert_selector "h1", text: "Contato Telefonicos"
  end

  test "creating a Contato telefonico" do
    visit contato_telefonicos_url
    click_on "New Contato Telefonico"

    fill_in "Ramal", with: @contato_telefonico.ramal
    fill_in "Responsavel", with: @contato_telefonico.responsavel_id
    fill_in "Telefone celular", with: @contato_telefonico.telefone_celular
    fill_in "Telefone fixo", with: @contato_telefonico.telefone_fixo
    click_on "Create Contato telefonico"

    assert_text "Contato telefonico was successfully created"
    click_on "Back"
  end

  test "updating a Contato telefonico" do
    visit contato_telefonicos_url
    click_on "Edit", match: :first

    fill_in "Ramal", with: @contato_telefonico.ramal
    fill_in "Responsavel", with: @contato_telefonico.responsavel_id
    fill_in "Telefone celular", with: @contato_telefonico.telefone_celular
    fill_in "Telefone fixo", with: @contato_telefonico.telefone_fixo
    click_on "Update Contato telefonico"

    assert_text "Contato telefonico was successfully updated"
    click_on "Back"
  end

  test "destroying a Contato telefonico" do
    visit contato_telefonicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contato telefonico was successfully destroyed"
  end
end
