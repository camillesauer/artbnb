class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :start_date
      t.string :end_date
      t.string :status

      t.timestamps
    end
  end
end
