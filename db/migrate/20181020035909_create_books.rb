class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :month
      t.string :dd
      t.string :yyyy
      t.string :hh
      t.string :mm
      t.string :ampm
      t.string :pickup
      t.string :dropoff
      t.string :passengers
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
