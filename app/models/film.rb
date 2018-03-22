class Film < ApplicationRecord
  validates :title, :length, :rating, :release_date, presence: true

  belongs_to :admin, class_name: :User
  has_many :screenings
  has_many :cinemas, through: :screenings
  has_many :schedules, through: :cinemas
end
