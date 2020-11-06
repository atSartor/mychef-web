class RenameUseidToUserToken < ActiveRecord::Migration[6.0]
  def change
    rename_column :favorites, :useid_id, :user_token_id
  end
end
