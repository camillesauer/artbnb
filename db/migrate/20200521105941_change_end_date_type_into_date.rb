class ChangeEndDateTypeIntoDate < ActiveRecord::Migration[6.0]
  def change
    change_column :rentals, :end_date, :date, using: "end_date::date"
  end
end
