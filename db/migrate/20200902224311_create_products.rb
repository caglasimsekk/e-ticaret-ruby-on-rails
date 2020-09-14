class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productModel
      t.text :body
      t.references :brand,null: false,foreign_key: true

      t.timestamps
    end
  end
end
