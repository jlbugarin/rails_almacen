class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
