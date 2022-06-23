class AddTreeIdToAdoption < ActiveRecord::Migration[6.1]
  def change
    add_column :adoptions, :tree_id, :integer
  end
end
