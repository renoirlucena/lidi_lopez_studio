class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :duration_minutes
      t.integer :image_count
      t.string :inclusions

      t.timestamps
    end
  end
end
