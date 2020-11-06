class CreateUserTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tokens do |t|

      t.timestamps
      t.string :idToken, null: false
    end
  end
end
