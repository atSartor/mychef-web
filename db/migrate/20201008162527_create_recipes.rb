class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :total_time
      t.string :yields
      t.string :instructions
      t.string :image
      t.string :host

      t.timestamps
    end
  end
end
