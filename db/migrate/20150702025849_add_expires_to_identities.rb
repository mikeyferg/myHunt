class AddExpiresToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :expires, :boolean
  end
end
