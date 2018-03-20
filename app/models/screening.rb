class Screening < ApplicationRecord
  belongs_to :cinema
  belongs_to :film
end
