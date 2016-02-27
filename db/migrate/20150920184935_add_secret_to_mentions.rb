class AddSecretToMentions < ActiveRecord::Migration
  def change
    add_column :mentions, :secret, :string
  end
end
