class SurfSession < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :spot, :description, :date, :rating, :spot_type, :tide, presence: true
end
