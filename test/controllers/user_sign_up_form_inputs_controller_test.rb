require 'test_helper'

class UserSignUpFormInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_sign_up_form_input = user_sign_up_form_inputs(:one)
  end

  test "should get index" do
    get user_sign_up_form_inputs_url, as: :json
    assert_response :success
  end

  test "should create user_sign_up_form_input" do
    assert_difference('UserSignUpFormInput.count') do
      post user_sign_up_form_inputs_url, params: { user_sign_up_form_input: { input_name: @user_sign_up_form_input.input_name, required: @user_sign_up_form_input.required, type: @user_sign_up_form_input.type } }, as: :json
    end

    assert_response 201
  end

  test "should show user_sign_up_form_input" do
    get user_sign_up_form_input_url(@user_sign_up_form_input), as: :json
    assert_response :success
  end

  test "should update user_sign_up_form_input" do
    patch user_sign_up_form_input_url(@user_sign_up_form_input), params: { user_sign_up_form_input: { input_name: @user_sign_up_form_input.input_name, required: @user_sign_up_form_input.required, type: @user_sign_up_form_input.type } }, as: :json
    assert_response 200
  end

  test "should destroy user_sign_up_form_input" do
    assert_difference('UserSignUpFormInput.count', -1) do
      delete user_sign_up_form_input_url(@user_sign_up_form_input), as: :json
    end

    assert_response 204
  end
end
