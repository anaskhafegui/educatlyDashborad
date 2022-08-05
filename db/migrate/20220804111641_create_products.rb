class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.has_attached_file :image
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.timestamps
    end
    end
end