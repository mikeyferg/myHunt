class AddUidToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :uid, :string
  end
end
