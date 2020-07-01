class CreateUserSignUpFormInputValues < ActiveRecord::Migration[6.0]
  def change
    create_table :user_sign_up_form_input_values do |t|
      t.integer :user_sign_up_form_input_id
      t.integer :user_id
      t.string :value

      t.timestamps
    end
    add_index :user_sign_up_form_input_values, :user_sign_up_form_input_id, name: 'usufi_id_index'
    add_index :user_sign_up_form_input_values, :user_id
    add_index :user_sign_up_form_input_values, [:user_sign_up_form_input_id, :user_id], unique: true, name: 'usufi_id_and_user_id_index'
  end
end
