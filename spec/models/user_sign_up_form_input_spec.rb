require 'rails_helper'

RSpec.describe UserSignUpFormInput, type: :model do

  it { should validate_presence_of :input_name }
  it { should validate_uniqueness_of :input_name }
  it { should validate_presence_of :required }
  it { should validate_presence_of :type }

end
