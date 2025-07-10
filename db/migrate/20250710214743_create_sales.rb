class CreateSales < ActiveRecord::Migration[8.0]
  def change
    create_table :sales do |t|
      t.float :total
      t.boolean :payed
      t.references :account, null: false, foreign_key: true
      t.references :creator, null: false, foreign_key: { to_table: :users }
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
