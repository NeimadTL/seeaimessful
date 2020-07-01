class UserSignUpFormInputValue < ApplicationRecord

  validates_presence_of :user_sign_up_form_input
  validates_presence_of :user
  
  belongs_to :user_sign_up_form_input
  belongs_to :user

end
