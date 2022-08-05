class AddFieldsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :administrator_id, :integer
  end
end
