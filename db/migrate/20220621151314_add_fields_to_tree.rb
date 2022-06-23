class AddFieldsToTree < ActiveRecord::Migration[6.1]
  def change
    add_column :trees, :name, :string
    add_column :trees, :adress, :string
    add_column :trees, :description, :text
    add_column :trees, :fruits, :string
    add_column :trees, :price_per_year, :integer
    add_column :trees, :quantity_by_year, :integer
  end
end
