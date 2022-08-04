class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.string :description
      t.string :created_at
      t.string :updated_at
      t.timestamps
    end
  end
end
