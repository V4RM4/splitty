require "application_system_test_case"

class GroupsTest < ApplicationSystemTestCase
  setup do
    @group = groups(:one)
  end

  test "visiting the index" do
    visit groups_url
    assert_selector "h1", text: "Groups"
  end

  test "should create group" do
    visit groups_url
    click_on "New group"

    fill_in "Group name", with: @group.group_name
    fill_in "Group owner", with: @group.group_owner
    fill_in "Group status", with: @group.group_status
    fill_in "Group type", with: @group.group_type
    click_on "Create Group"

    assert_text "Group was successfully created"
    click_on "Back"
  end

  test "should update Group" do
    visit group_url(@group)
    click_on "Edit this group", match: :first

    fill_in "Group name", with: @group.group_name
    fill_in "Group owner", with: @group.group_owner
    fill_in "Group status", with: @group.group_status
    fill_in "Group type", with: @group.group_type
    click_on "Update Group"

    assert_text "Group was successfully updated"
    click_on "Back"
  end

  test "should destroy Group" do
    visit group_url(@group)
    click_on "Destroy this group", match: :first

    assert_text "Group was successfully destroyed"
  end
end
