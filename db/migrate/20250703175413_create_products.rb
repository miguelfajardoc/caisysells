class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
