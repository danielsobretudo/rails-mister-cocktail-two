class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.text :ingredients
      t.integer :stars
      t.string :image_url
      t.text :recipe

      t.timestamps
    end
  end
end
