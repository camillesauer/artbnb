class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.text :dimension
      t.string :category

      t.timestamps
    end
  end
end
