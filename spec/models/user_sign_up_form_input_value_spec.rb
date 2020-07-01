require 'rails_helper'

RSpec.describe UserSignUpFormInputValue, type: :model do

  it { should belong_to :user_sign_up_form_input }
  it { should belong_to :user }
  
end
