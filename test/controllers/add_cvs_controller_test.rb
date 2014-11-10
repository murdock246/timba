require 'test_helper'

class AddCvsControllerTest < ActionController::TestCase
  setup do
    @add_cv = add_cvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_cvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_cv" do
    assert_difference('AddCv.count') do
      post :create, add_cv: { education: @add_cv.education, experience: @add_cv.experience, full_name: @add_cv.full_name, languages: @add_cv.languages, profile: @add_cv.profile, recent_work_experience: @add_cv.recent_work_experience, skills: @add_cv.skills }
    end

    assert_redirected_to add_cv_path(assigns(:add_cv))
  end

  test "should show add_cv" do
    get :show, id: @add_cv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_cv
    assert_response :success
  end

  test "should update add_cv" do
    patch :update, id: @add_cv, add_cv: { education: @add_cv.education, experience: @add_cv.experience, full_name: @add_cv.full_name, languages: @add_cv.languages, profile: @add_cv.profile, recent_work_experience: @add_cv.recent_work_experience, skills: @add_cv.skills }
    assert_redirected_to add_cv_path(assigns(:add_cv))
  end

  test "should destroy add_cv" do
    assert_difference('AddCv.count', -1) do
      delete :destroy, id: @add_cv
    end

    assert_redirected_to add_cvs_path
  end
end
