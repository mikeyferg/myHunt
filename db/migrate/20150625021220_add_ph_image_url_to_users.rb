class AddPhImageUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ph_image_url, :string
  end
end
