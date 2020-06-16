class Tool < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :name, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }
end
