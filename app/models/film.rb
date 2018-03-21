class Film < ApplicationRecord
  has_many :screenings
  has_many :cinemas, through: :screenings
  has_many :schedules, through: :cinemas
  validates :title, :length, :rating, :release_date, presence: true
end
