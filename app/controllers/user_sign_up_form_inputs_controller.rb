class UserSignUpFormInputsController < ApplicationController
  before_action :set_user_sign_up_form_input, only: [:show, :update, :destroy]

  # GET /user_sign_up_form_inputs
  def index
    @user_sign_up_form_inputs = UserSignUpFormInput.all

    render json: @user_sign_up_form_inputs
  end

  # GET /user_sign_up_form_inputs/1
  def show
    render json: @user_sign_up_form_input
  end

  # POST /user_sign_up_form_inputs
  def create
    @user_sign_up_form_input = UserSignUpFormInput.new(user_sign_up_form_input_params)

    if @user_sign_up_form_input.save
      render json: @user_sign_up_form_input, status: :created, location: @user_sign_up_form_input
    else
      render json: @user_sign_up_form_input.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_sign_up_form_inputs/1
  def update
    if @user_sign_up_form_input.update(user_sign_up_form_input_params)
      render json: @user_sign_up_form_input
    else
      render json: @user_sign_up_form_input.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_sign_up_form_inputs/1
  def destroy
    @user_sign_up_form_input.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_sign_up_form_input
      @user_sign_up_form_input = UserSignUpFormInput.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_sign_up_form_input_params
      params.require(:user_sign_up_form_input).permit(:input_name, :required, :type)
    end
end
