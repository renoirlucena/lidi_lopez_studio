class CreateContactSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_submissions do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.date :appointment_date
      t.text :message

      t.timestamps
    end
  end
end
