class FixUserColumnNames2 < ActiveRecord::Migration
  def change
    rename_column :users, :username, :ph_username
    rename_column :users, :user_id, :ph_user_id
  end
end
