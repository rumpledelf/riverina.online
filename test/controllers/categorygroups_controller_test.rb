require "test_helper"

class CategorygroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categorygroup = categorygroups(:one)
  end

  test "should get index" do
    get categorygroups_url
    assert_response :success
  end

  test "should get new" do
    get new_categorygroup_url
    assert_response :success
  end

  test "should create categorygroup" do
    assert_difference("Categorygroup.count") do
      post categorygroups_url, params: { categorygroup: { description: @categorygroup.description, icon: @categorygroup.icon, name: @categorygroup.name } }
    end

    assert_redirected_to categorygroup_url(Categorygroup.last)
  end

  test "should show categorygroup" do
    get categorygroup_url(@categorygroup)
    assert_response :success
  end

  test "should get edit" do
    get edit_categorygroup_url(@categorygroup)
    assert_response :success
  end

  test "should update categorygroup" do
    patch categorygroup_url(@categorygroup), params: { categorygroup: { description: @categorygroup.description, icon: @categorygroup.icon, name: @categorygroup.name } }
    assert_redirected_to categorygroup_url(@categorygroup)
  end

  test "should destroy categorygroup" do
    assert_difference("Categorygroup.count", -1) do
      delete categorygroup_url(@categorygroup)
    end

    assert_redirected_to categorygroups_url
  end
end
