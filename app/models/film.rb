class Film < ApplicationRecord
  has_many :screenings
  has_many :cinemas, through: :screenings
end
