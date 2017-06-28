class Trip < ApplicationRecord
  has_many :users, through: :trips
  validates :title, presence: true
end
