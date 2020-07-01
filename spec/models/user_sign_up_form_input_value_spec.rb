require 'rails_helper'

RSpec.describe UserSignUpFormInputValue, type: :model do

  it { should validate_presence_of :user_sign_up_form_input }
  it { should validate_presence_of :user }

  it { should belong_to :user_sign_up_form_input }
  it { should belong_to :user }

end
