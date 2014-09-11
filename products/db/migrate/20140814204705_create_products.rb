class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal12 :price
      t.decimal2 :price
      t.boolean :active

      t.timestamps
    end
  end
end
