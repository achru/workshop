require 'test_helper'

class TeacherProfilesControllerTest < ActionController::TestCase
  setup do
    @teacher_profile = teacher_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_profile" do
    assert_difference('TeacherProfile.count') do
      post :create, teacher_profile: { about: @teacher_profile.about, email: @teacher_profile.email, name: @teacher_profile.name, url: @teacher_profile.url, user_id: @teacher_profile.user_id }
    end

    assert_redirected_to teacher_profile_path(assigns(:teacher_profile))
  end

  test "should show teacher_profile" do
    get :show, id: @teacher_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_profile
    assert_response :success
  end

  test "should update teacher_profile" do
    patch :update, id: @teacher_profile, teacher_profile: { about: @teacher_profile.about, email: @teacher_profile.email, name: @teacher_profile.name, url: @teacher_profile.url, user_id: @teacher_profile.user_id }
    assert_redirected_to teacher_profile_path(assigns(:teacher_profile))
  end

  test "should destroy teacher_profile" do
    assert_difference('TeacherProfile.count', -1) do
      delete :destroy, id: @teacher_profile
    end

    assert_redirected_to teacher_profiles_path
  end
end
