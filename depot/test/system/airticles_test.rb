require "application_system_test_case"

class AirticlesTest < ApplicationSystemTestCase
  setup do
    @airticle = airticles(:one)
  end

  test "visiting the index" do
    visit airticles_url
    assert_selector "h1", text: "Airticles"
  end

  test "creating a Airticle" do
    visit airticles_url
    click_on "New Airticle"

    fill_in "Abstract", with: @airticle.abstract
    fill_in "Affiliation", with: @airticle.affiliation
    fill_in "Contactaddress", with: @airticle.contactaddress
    fill_in "Name", with: @airticle.name
    fill_in "Phonenumber", with: @airticle.phonenumber
    fill_in "Title", with: @airticle.title
    click_on "Create Airticle"

    assert_text "Airticle was successfully created"
    click_on "Back"
  end

  test "updating a Airticle" do
    visit airticles_url
    click_on "Edit", match: :first

    fill_in "Abstract", with: @airticle.abstract
    fill_in "Affiliation", with: @airticle.affiliation
    fill_in "Contactaddress", with: @airticle.contactaddress
    fill_in "Name", with: @airticle.name
    fill_in "Phonenumber", with: @airticle.phonenumber
    fill_in "Title", with: @airticle.title
    click_on "Update Airticle"

    assert_text "Airticle was successfully updated"
    click_on "Back"
  end

  test "destroying a Airticle" do
    visit airticles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Airticle was successfully destroyed"
  end
end
