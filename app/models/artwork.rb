class Artwork < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_one_attached :photo
  has_many :rentals

  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :dimension, presence: true
  CATEGORY = ["Painting", "Sculpture", "Installation", "Photography", "Video"]
  validates :category, inclusion: { in: CATEGORY}

end
