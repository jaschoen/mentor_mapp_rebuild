require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { bio: @profile.bio, certification: @profile.certification, city: @profile.city, coach_type: @profile.coach_type, email: @profile.email, experience: @profile.experience, first_name: @profile.first_name, language: @profile.language, last_name: @profile.last_name, price_high: @profile.price_high, price_low: @profile.price_low, rating: @profile.rating, skills: @profile.skills, state: @profile.state }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { bio: @profile.bio, certification: @profile.certification, city: @profile.city, coach_type: @profile.coach_type, email: @profile.email, experience: @profile.experience, first_name: @profile.first_name, language: @profile.language, last_name: @profile.last_name, price_high: @profile.price_high, price_low: @profile.price_low, rating: @profile.rating, skills: @profile.skills, state: @profile.state }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
