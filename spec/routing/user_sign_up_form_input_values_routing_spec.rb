require "rails_helper"

RSpec.describe UserSignUpFormInputValuesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_sign_up_form_input_values").to route_to("user_sign_up_form_input_values#index")
    end

    it "routes to #show" do
      expect(get: "/user_sign_up_form_input_values/1").to route_to("user_sign_up_form_input_values#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_sign_up_form_input_values").to route_to("user_sign_up_form_input_values#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_sign_up_form_input_values/1").to route_to("user_sign_up_form_input_values#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_sign_up_form_input_values/1").to route_to("user_sign_up_form_input_values#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_sign_up_form_input_values/1").to route_to("user_sign_up_form_input_values#destroy", id: "1")
    end
  end
end
