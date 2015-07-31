class AddUrlToMentions < ActiveRecord::Migration
  def change
    add_column :mentions, :url, :string
  end
end
