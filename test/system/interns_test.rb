require "application_system_test_case"

class InternsTest < ApplicationSystemTestCase
  setup do
    @intern = interns(:one)
  end

  test "visiting the index" do
    visit interns_url
    assert_selector "h1", text: "Interns"
  end

  test "should create intern" do
    visit interns_url
    click_on "New intern"

    fill_in "Index", with: @intern.index
    fill_in "Value", with: @intern.value
    click_on "Create Intern"

    assert_text "Intern was successfully created"
    click_on "Back"
  end

  test "should update Intern" do
    visit intern_url(@intern)
    click_on "Edit this intern", match: :first

    fill_in "Index", with: @intern.index
    fill_in "Value", with: @intern.value
    click_on "Update Intern"

    assert_text "Intern was successfully updated"
    click_on "Back"
  end

  test "should destroy Intern" do
    visit intern_url(@intern)
    click_on "Destroy this intern", match: :first

    assert_text "Intern was successfully destroyed"
  end
end
