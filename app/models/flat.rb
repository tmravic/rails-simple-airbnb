class Flat < ApplicationRecord
  validates :name, presence: true
  has_one_attached :photo, dependent: :destroy
end
