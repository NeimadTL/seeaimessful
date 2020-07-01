class User < ApplicationRecord

  has_many :user_sign_up_form_input_values
  has_many :inputs, through: :user_sign_up_form_input_values, class_name: "UserSignUpFormInput"

end
