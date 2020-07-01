require 'rails_helper'

RSpec.describe User, type: :model do

  it { should have_many :user_sign_up_form_input_values }
  it { should have_many :inputs }

end
