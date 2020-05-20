class Artwork < ApplicationRecord
  # before_create :set_default_picture
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

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
  # def set_default_picture
  #   self.photo = 'app/assets/images/filler_picture.jpg'
  # end
end
