require 'test_helper'

class MonkeysControllerTest < ActionController::TestCase
  setup do
    @monkey = monkeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monkeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monkey" do
    assert_difference('Monkey.count') do
      post :create, monkey: { description: @monkey.description, length_of_tail: @monkey.length_of_tail, name: @monkey.name }
    end

    assert_redirected_to monkey_path(assigns(:monkey))
  end

  test "should show monkey" do
    get :show, id: @monkey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monkey
    assert_response :success
  end

  test "should update monkey" do
    put :update, id: @monkey, monkey: { description: @monkey.description, length_of_tail: @monkey.length_of_tail, name: @monkey.name }
    assert_redirected_to monkey_path(assigns(:monkey))
  end

  test "should destroy monkey" do
    assert_difference('Monkey.count', -1) do
      delete :destroy, id: @monkey
    end

    assert_redirected_to monkeys_path
  end
end
