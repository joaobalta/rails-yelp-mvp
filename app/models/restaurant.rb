class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w(chinese french belgian italian japanese)}
  has_many :reviews, dependent: :destroy
end
