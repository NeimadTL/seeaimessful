class UserSignUpFormInputValuesController < ApplicationController
  before_action :set_user_sign_up_form_input_value, only: [:show, :update, :destroy]

  # GET /user_sign_up_form_input_values
  def index
    @user_sign_up_form_input_values = UserSignUpFormInputValue.all

    render json: @user_sign_up_form_input_values
  end

  # GET /user_sign_up_form_input_values/1
  def show
    render json: @user_sign_up_form_input_value
  end

  # POST /user_sign_up_form_input_values
  def create
    @user_sign_up_form_input_value = UserSignUpFormInputValue.new(user_sign_up_form_input_value_params)

    if @user_sign_up_form_input_value.save
      render json: @user_sign_up_form_input_value, status: :created, location: @user_sign_up_form_input_value
    else
      render json: @user_sign_up_form_input_value.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_sign_up_form_input_values/1
  def update
    if @user_sign_up_form_input_value.update(user_sign_up_form_input_value_params)
      render json: @user_sign_up_form_input_value
    else
      render json: @user_sign_up_form_input_value.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_sign_up_form_input_values/1
  def destroy
    @user_sign_up_form_input_value.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_sign_up_form_input_value
      @user_sign_up_form_input_value = UserSignUpFormInputValue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_sign_up_form_input_value_params
      params.require(:user_sign_up_form_input_value).permit(:user_sign_up_form_input_id, :user_id, :value)
    end
end
