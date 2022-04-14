class AddDatesToAdoption < ActiveRecord::Migration[6.1]
  def change
    add_column :adoptions, :starts_at, :date
    add_column :adoptions, :ends_at, :date
  end
end
