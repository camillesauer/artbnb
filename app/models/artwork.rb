class Artwork < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :rentals

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :dimension, presence: true
  validates :category, inclusion: { in: ["painting", "sculpture", "installation", "photographie", "vidéo"]}

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    redirect_to artworks_user_path
  end

end
