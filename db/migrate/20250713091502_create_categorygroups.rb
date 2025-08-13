class CreateCategorygroups < ActiveRecord::Migration[8.0]
  def change
    create_table :categorygroups do |t|
      t.string :name
      t.string :icon
      t.text :description

      t.timestamps
    end
  end
end
