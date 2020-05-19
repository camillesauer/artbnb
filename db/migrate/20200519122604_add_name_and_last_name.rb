class AddNameAndLastName < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :text
    add_column :users, :last_name, :text
  end
end
