class AddTitleUrlStatusToFeed < ActiveRecord::Migration
  def change
    add_column :feeds, :title, :string
    add_column :feeds, :url, :string
    add_column :feeds, :status, :string
  end
end
