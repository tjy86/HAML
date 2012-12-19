require 'test_helper'

class VampiresControllerTest < ActionController::TestCase
  setup do
    @vampire = vampires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vampires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vampire" do
    assert_difference('Vampire.count') do
      post :create, vampire: { blood_type: @vampire.blood_type, name: @vampire.name, team: @vampire.team }
    end

    assert_redirected_to vampire_path(assigns(:vampire))
  end

  test "should show vampire" do
    get :show, id: @vampire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vampire
    assert_response :success
  end

  test "should update vampire" do
    put :update, id: @vampire, vampire: { blood_type: @vampire.blood_type, name: @vampire.name, team: @vampire.team }
    assert_redirected_to vampire_path(assigns(:vampire))
  end

  test "should destroy vampire" do
    assert_difference('Vampire.count', -1) do
      delete :destroy, id: @vampire
    end

    assert_redirected_to vampires_path
  end
end
