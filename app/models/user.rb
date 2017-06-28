class User < ApplicationRecord
  has_many :trips, through: :legs
  has_many :legs
  validates :name, :email, :uid, :community, :voucher, :vouched, presence: true
  validates :uid, uniqueness: true
end
