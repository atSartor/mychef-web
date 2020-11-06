class ChangeUseidsToUserTokens < ActiveRecord::Migration[6.0]
  def change
    rename_table :useids, :user_tokens
  end
end
