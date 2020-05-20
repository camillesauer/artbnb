class Artwork < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :rentals

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :dimension, presence: true
  CATEGORY = ["Painting", "Sculpture", "Installation", "Photography", "Video"]
  validates :category, inclusion: { in: CATEGORY}

end
