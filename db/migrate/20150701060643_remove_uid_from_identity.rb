class RemoveUidFromIdentity < ActiveRecord::Migration
  def change
    remove_column :identities, :uid, :integer
  end
end
