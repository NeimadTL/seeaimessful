class UserSignUpFormInput < ApplicationRecord

  validates :input_name, presence: true, uniqueness: true
  validates :required, presence: true
  validates :type, presence: true

  has_many :user_sign_up_form_input_values
  has_many :users, through: :user_sign_up_form_input_values

end
