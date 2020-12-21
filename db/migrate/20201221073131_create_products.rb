class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :Title
      t.decimal :price
      t.text :description
      t.string :image_url
      t.string :color

      t.timestamps
    end
  end
end
