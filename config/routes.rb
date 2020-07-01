Rails.application.routes.draw do
  resources :users
  resources :user_sign_up_form_input_values
  resources :user_sign_up_form_inputs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
