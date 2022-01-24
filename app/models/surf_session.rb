class SurfSession < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :spot, :description, :date, :rating, :spot_type, :tide, presence: true
  scope :from_year, ->(date) { where(date: date.beginning_of_year..date.end_of_year) }
end
