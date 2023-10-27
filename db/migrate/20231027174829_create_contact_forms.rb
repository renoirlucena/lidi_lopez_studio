class CreateContactForms < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.date :desired_appointment_date

      t.timestamps
    end
  end
end
