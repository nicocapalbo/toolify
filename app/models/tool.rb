class Tool < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :name, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }
end
