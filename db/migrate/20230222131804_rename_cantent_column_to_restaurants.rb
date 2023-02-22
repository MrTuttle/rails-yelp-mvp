class RenameCantentColumnToRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :cantent, :string
    add_column :reviews, :content, :string
  end
end
