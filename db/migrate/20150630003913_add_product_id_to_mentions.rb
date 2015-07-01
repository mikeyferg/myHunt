class AddProductIdToMentions < ActiveRecord::Migration
  def change
    add_column :mentions, :product_id, :integer
  end
end
