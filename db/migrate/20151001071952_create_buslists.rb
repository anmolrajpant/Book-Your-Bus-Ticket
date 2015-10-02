class CreateBuslists < ActiveRecord::Migration
  def change
    create_table :buslists do |t|
      t.string :starting
      t.string :ending
      t.datetime :time
      t.integer :busNo
      t.integer :price

      t.timestamps null: false
    end
  end
end
