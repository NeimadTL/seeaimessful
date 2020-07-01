require 'rails_helper'

RSpec.describe UserSignUpFormInput, type: :model do

  it { should validate_presence_of :input_name }
  it { should validate_uniqueness_of :input_name }
  it { should validate_presence_of :required }
  it { should validate_presence_of :type }

  it { should have_many :user_sign_up_form_input_values }
  it { should have_many :users }

end
