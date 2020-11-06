class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|

      t.timestamps
      t.bigint :user_token_id, null: false
      t.bigint :recipe_id, null: false
    end
  end
end
