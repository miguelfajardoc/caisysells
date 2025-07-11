class CreateDetailedSales < ActiveRecord::Migration[8.0]
  def change
    create_table :detailed_sales do |t|
      t.integer :quantity
      t.float :current_price
      t.float :total_price
      t.float :discount
      t.references :product, null: false, foreign_key: true
      t.references :sale, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.timestamps
    end
  end
end
