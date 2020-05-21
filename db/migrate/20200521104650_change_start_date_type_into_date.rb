class ChangeStartDateTypeIntoDate < ActiveRecord::Migration[6.0]
  def change
    change_column :rentals, :start_date, :date, using: "start_date::date"
  end
end
