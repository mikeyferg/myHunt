class CreateProductsUsers < ActiveRecord::Migration
  def change
    create_table :products_users do |t|
      t.integer :product_id
      t.integer :user_id
    end
  end
end
