class Tool < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }
end
