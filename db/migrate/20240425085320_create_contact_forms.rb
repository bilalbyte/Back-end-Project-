class CreateContactForms < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
