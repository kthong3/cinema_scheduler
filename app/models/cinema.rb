class Cinema < ApplicationRecord
  has_many :screenings
  has_many :films, through: :screenings
end
