class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, :string
      t.decimal :price, :decimal, :precision => 8, :scale => 2
      t.string :image, :string
      t.string :description, :string
      t.string :created_at
      t.string :updated_at
      t.timestamps
    end
  end
end
