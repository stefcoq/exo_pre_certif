class CreateTrees < ActiveRecord::Migration[6.1]
  def change
    create_table :trees do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.string :address
      t.integer :quantity_by_year
      t.string :fruit
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
