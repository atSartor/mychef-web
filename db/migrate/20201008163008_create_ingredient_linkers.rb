class CreateIngredientLinkers < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_linkers do |t|
      t.belongs_to :recipe
      t.belongs_to :ingredient
      t.timestamps
    end
  end
end
