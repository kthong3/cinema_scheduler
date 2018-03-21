class Cinema < ApplicationRecord
  has_many :screenings
  has_many :films, through: :screenings
  has_many :schedules

  validates :name, :address, :phone_number,presence: true, uniqueness: { case_sensitive: false }
end
