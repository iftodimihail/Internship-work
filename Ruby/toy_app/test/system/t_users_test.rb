require "application_system_test_case"

class TUsersTest < ApplicationSystemTestCase
  setup do
    @t_user = t_users(:one)
  end

  test "visiting the index" do
    visit t_users_url
    assert_selector "h1", text: "T Users"
  end

  test "creating a T user" do
    visit t_users_url
    click_on "New T User"

    fill_in "Email", with: @t_user.email
    fill_in "Name", with: @t_user.name
    click_on "Create T user"

    assert_text "T user was successfully created"
    click_on "Back"
  end

  test "updating a T user" do
    visit t_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @t_user.email
    fill_in "Name", with: @t_user.name
    click_on "Update T user"

    assert_text "T user was successfully updated"
    click_on "Back"
  end

  test "destroying a T user" do
    visit t_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "T user was successfully destroyed"
  end
end
