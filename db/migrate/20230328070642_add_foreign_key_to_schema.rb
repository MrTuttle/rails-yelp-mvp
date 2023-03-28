class AddForeignKeyToSchema < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key "reviews", "restaurants"
  end
end
