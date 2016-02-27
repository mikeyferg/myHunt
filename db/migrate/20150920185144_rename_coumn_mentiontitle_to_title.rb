class RenameCoumnMentiontitleToTitle < ActiveRecord::Migration
  def change
    rename_column :mentions, :mention_title, :title
  end
end
