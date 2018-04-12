require "application_system_test_case"

class DiscussiomsTest < ApplicationSystemTestCase
  setup do
    @discussiom = discussioms(:one)
  end

  test "visiting the index" do
    visit discussioms_url
    assert_selector "h1", text: "Discussioms"
  end

  test "creating a Discussiom" do
    visit discussioms_url
    click_on "New Discussiom"

    fill_in "Content", with: @discussiom.content
    fill_in "Title", with: @discussiom.title
    click_on "Create Discussiom"

    assert_text "Discussiom was successfully created"
    click_on "Back"
  end

  test "updating a Discussiom" do
    visit discussioms_url
    click_on "Edit", match: :first

    fill_in "Content", with: @discussiom.content
    fill_in "Title", with: @discussiom.title
    click_on "Update Discussiom"

    assert_text "Discussiom was successfully updated"
    click_on "Back"
  end

  test "destroying a Discussiom" do
    visit discussioms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Discussiom was successfully destroyed"
  end
end
