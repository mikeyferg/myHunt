class AddStatusToMentions < ActiveRecord::Migration
  def change
    add_column :mentions, :status, :string
    add_column :mentions, :source, :string
  end
end
