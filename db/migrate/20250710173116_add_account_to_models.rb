class AddAccountToModels < ActiveRecord::Migration[8.0]
  def change
    add_reference :products, :account, null: false, foreign_key: true
    add_reference :clients, :account, null: false, foreign_key: true
    add_reference :zones, :account, null: false, foreign_key: true
    add_reference :categories, :account, null: false, foreign_key: true
  end
end
