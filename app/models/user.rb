class User < ApplicationRecord
  has_many :trips, through: :legs
  has_many :legs
  validates :email, :uid, presence: true
  validates :uid, uniqueness: true
end
