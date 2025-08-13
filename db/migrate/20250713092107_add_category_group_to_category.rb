class AddCategoryGroupToCategory < ActiveRecord::Migration[8.0]
  def change
    add_reference :categories, :categorygroup, null: false, foreign_key: true
  end
end
