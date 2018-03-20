class Screening < ApplicationRecord
  belongs_to :cinema
  belongs_to :film
  validates :start_time, :end_time, presence: true
end
