require "application_system_test_case"

class EssaysTest < ApplicationSystemTestCase
  setup do
    @essay = essays(:one)
  end

  test "visiting the index" do
    visit essays_url
    assert_selector "h1", text: "Essays"
  end

  test "creating a Essay" do
    visit essays_url
    click_on "New Essay"

    fill_in "Description", with: @essay.description
    fill_in "Name", with: @essay.name
    click_on "Create Essay"

    assert_text "Essay was successfully created"
    click_on "Back"
  end

  test "updating a Essay" do
    visit essays_url
    click_on "Edit", match: :first

    fill_in "Description", with: @essay.description
    fill_in "Name", with: @essay.name
    click_on "Update Essay"

    assert_text "Essay was successfully updated"
    click_on "Back"
  end

  test "destroying a Essay" do
    visit essays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Essay was successfully destroyed"
  end
end
