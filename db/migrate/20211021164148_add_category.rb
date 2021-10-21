class AddCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :category, :string, null:false
  end
end
