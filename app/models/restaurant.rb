class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  validates :name, :phone_number, uniqueness: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
