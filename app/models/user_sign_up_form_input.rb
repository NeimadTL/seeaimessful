class UserSignUpFormInput < ApplicationRecord

  validates :input_name, presence: true, uniqueness: true
  validates :required, presence: true
  validates :type, presence: true
  
end
