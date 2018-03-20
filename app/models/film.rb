class Film < ApplicationRecord
  has_many :screenings
  has_many :cinemas, through: :screenings
  validates :title, :length, :rating, :release_date, presence: true
end
