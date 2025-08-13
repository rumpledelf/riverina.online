class CreateListings < ActiveRecord::Migration[8.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :url
      t.string :logo
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.string :address
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
