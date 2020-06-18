class Tool < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [:name, :location],
    using: {
    tsearch: { prefix: true }
    }

  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
