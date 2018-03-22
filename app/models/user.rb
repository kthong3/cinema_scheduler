class User < ApplicationRecord
  has_many :films, foreign_key: :admin_id, class_name: :Film
  has_many :cinemas, dependent: :destroy, foreign_key: :admin_id, class_name: :Cinema

  validates :name, :password, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
end
