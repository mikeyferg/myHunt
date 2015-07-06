class RemoveUserIdFromIdentity < ActiveRecord::Migration
  def change
    remove_column :identities, :user_id, :integer
  end
end
