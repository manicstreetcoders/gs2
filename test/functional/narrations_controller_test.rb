require 'test_helper'

class NarrationsControllerTest < ActionController::TestCase
  setup do
    @narration = narrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:narrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create narration" do
    assert_difference('Narration.count') do
      post :create, narration: { audio: @narration.audio, title: @narration.title }
    end

    assert_redirected_to narration_path(assigns(:narration))
  end

  test "should show narration" do
    get :show, id: @narration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @narration
    assert_response :success
  end

  test "should update narration" do
    put :update, id: @narration, narration: { audio: @narration.audio, title: @narration.title }
    assert_redirected_to narration_path(assigns(:narration))
  end

  test "should destroy narration" do
    assert_difference('Narration.count', -1) do
      delete :destroy, id: @narration
    end

    assert_redirected_to narrations_path
  end
end
