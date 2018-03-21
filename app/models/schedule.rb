class Schedule < ApplicationRecord
  belongs_to :cinema
  validates :day, :open, :close, presence: true
end
