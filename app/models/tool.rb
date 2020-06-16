class Tool < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :name, :description, :price, presence: true
  validates :price, numericality: { only_integer: true } 
end
