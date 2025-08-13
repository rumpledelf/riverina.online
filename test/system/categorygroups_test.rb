require "application_system_test_case"

class CategorygroupsTest < ApplicationSystemTestCase
  setup do
    @categorygroup = categorygroups(:one)
  end

  test "visiting the index" do
    visit categorygroups_url
    assert_selector "h1", text: "Categorygroups"
  end

  test "should create categorygroup" do
    visit categorygroups_url
    click_on "New categorygroup"

    fill_in "Description", with: @categorygroup.description
    fill_in "Icon", with: @categorygroup.icon
    fill_in "Name", with: @categorygroup.name
    click_on "Create Categorygroup"

    assert_text "Categorygroup was successfully created"
    click_on "Back"
  end

  test "should update Categorygroup" do
    visit categorygroup_url(@categorygroup)
    click_on "Edit this categorygroup", match: :first

    fill_in "Description", with: @categorygroup.description
    fill_in "Icon", with: @categorygroup.icon
    fill_in "Name", with: @categorygroup.name
    click_on "Update Categorygroup"

    assert_text "Categorygroup was successfully updated"
    click_on "Back"
  end

  test "should destroy Categorygroup" do
    visit categorygroup_url(@categorygroup)
    click_on "Destroy this categorygroup", match: :first

    assert_text "Categorygroup was successfully destroyed"
  end
end
