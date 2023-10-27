class CreateBabySessions < ActiveRecord::Migration[7.0]
  def change
    create_table :baby_sessions do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
