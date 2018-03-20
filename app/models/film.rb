class Film < ApplicationRecord
  belongs_to :cinema
  has_many :screenings
end
