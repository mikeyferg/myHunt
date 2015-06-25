class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :ph_post_id
      t.string :ph_post_name
      t.string :ph_post_tagline
      t.string :ph_post_screenshot_url
      t.string :string

      t.timestamps null: false
    end
  end
end
