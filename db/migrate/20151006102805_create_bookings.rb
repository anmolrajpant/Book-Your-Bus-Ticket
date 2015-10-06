class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :fullName
      t.text :addr
      t.string :email
      t.integer :contactNo

      t.timestamps null: false
    end
  end
end
