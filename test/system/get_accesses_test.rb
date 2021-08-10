require "application_system_test_case"

class GetAccessesTest < ApplicationSystemTestCase
  setup do
    @get_access = get_accesses(:one)
  end

  test "visiting the index" do
    visit get_accesses_url
    assert_selector "h1", text: "Get Accesses"
  end

  test "creating a Get access" do
    visit get_accesses_url
    click_on "New Get Access"

    check "Approval" if @get_access.approval
    check "Early access" if @get_access.early_access
    fill_in "Email", with: @get_access.email
    fill_in "Full name", with: @get_access.full_name
    fill_in "Monthly", with: @get_access.monthly
    fill_in "Phne", with: @get_access.phne
    fill_in "Use case", with: @get_access.use_case
    fill_in "Use region", with: @get_access.use_region
    fill_in "Website", with: @get_access.website
    fill_in "Work place", with: @get_access.work_place
    fill_in "Work vertical", with: @get_access.work_vertical
    click_on "Create Get access"

    assert_text "Get access was successfully created"
    click_on "Back"
  end

  test "updating a Get access" do
    visit get_accesses_url
    click_on "Edit", match: :first

    check "Approval" if @get_access.approval
    check "Early access" if @get_access.early_access
    fill_in "Email", with: @get_access.email
    fill_in "Full name", with: @get_access.full_name
    fill_in "Monthly", with: @get_access.monthly
    fill_in "Phne", with: @get_access.phne
    fill_in "Use case", with: @get_access.use_case
    fill_in "Use region", with: @get_access.use_region
    fill_in "Website", with: @get_access.website
    fill_in "Work place", with: @get_access.work_place
    fill_in "Work vertical", with: @get_access.work_vertical
    click_on "Update Get access"

    assert_text "Get access was successfully updated"
    click_on "Back"
  end

  test "destroying a Get access" do
    visit get_accesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Get access was successfully destroyed"
  end
end
