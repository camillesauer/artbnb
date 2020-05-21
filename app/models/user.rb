class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :artworks, dependent: :destroy
  has_many :rentals, dependent: :destroy
  # has_many :owner_rentals, through: :artworks, source: :rental
  has_one_attached :photo
  def owner_rentals
    self.artworks.map(&:rentals).flatten
  end
end
