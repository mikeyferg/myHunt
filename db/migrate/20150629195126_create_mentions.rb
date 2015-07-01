class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.string :mention_title
      t.text :mention_description

      t.timestamps null: false
    end
  end
end
