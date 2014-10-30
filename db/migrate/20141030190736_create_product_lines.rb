class CreateProductLines < ActiveRecord::Migration
  def change
    create_table :product_lines do |t|
      t.string :order_id
      t.string :product_id
      t.integer    :amount
      
      t.timestamps
    end
  end
end
