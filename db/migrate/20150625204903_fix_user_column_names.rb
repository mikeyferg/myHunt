class FixUserColumnNames < ActiveRecord::Migration
  def change
    change_table :user do |t|
      t.rename :username, :ph_username
      t.rename :user_id, :ph_user_id
      end
  end
end
