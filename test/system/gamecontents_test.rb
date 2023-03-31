require "application_system_test_case"

class GamecontentsTest < ApplicationSystemTestCase
  setup do
    @gamecontent = gamecontents(:one)
  end

  test "visiting the index" do
    visit gamecontents_url
    assert_selector "h1", text: "Gamecontents"
  end

  test "creating a Gamecontent" do
    visit gamecontents_url
    click_on "New Gamecontent"

    fill_in "Coin", with: @gamecontent.coin
    fill_in "Die", with: @gamecontent.die
    fill_in "Points", with: @gamecontent.points
    fill_in "User", with: @gamecontent.user_id
    click_on "Create Gamecontent"

    assert_text "Gamecontent was successfully created"
    click_on "Back"
  end

  test "updating a Gamecontent" do
    visit gamecontents_url
    click_on "Edit", match: :first

    fill_in "Coin", with: @gamecontent.coin
    fill_in "Die", with: @gamecontent.die
    fill_in "Points", with: @gamecontent.points
    fill_in "User", with: @gamecontent.user_id
    click_on "Update Gamecontent"

    assert_text "Gamecontent was successfully updated"
    click_on "Back"
  end

  test "destroying a Gamecontent" do
    visit gamecontents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gamecontent was successfully destroyed"
  end
end
