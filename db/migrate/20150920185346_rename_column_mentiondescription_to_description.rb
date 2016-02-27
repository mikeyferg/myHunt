class RenameColumnMentiondescriptionToDescription < ActiveRecord::Migration
  def change
    rename_column :mentions, :mention_description, :description
  end
end
