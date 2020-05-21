class AddArtworkReferencesToRental < ActiveRecord::Migration[6.0]
  def change
    add_reference :rentals, :artwork, index: true
  end
end
