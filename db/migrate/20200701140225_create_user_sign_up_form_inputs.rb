class CreateUserSignUpFormInputs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_sign_up_form_inputs do |t|
      t.string :input_name
      t.boolean :required
      t.string :type

      t.timestamps
    end
  end
end
