class Cinema < ApplicationRecord
  validates :name, :address, :phone_number,presence: true, uniqueness: { case_sensitive: false }

  belongs_to :admin, class_name: :User
  has_many :screenings
  has_many :films, through: :screenings
  has_many :schedules
end
