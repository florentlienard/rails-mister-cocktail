class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients
  validates :name, presence: true, uniqueness: true, allow_blank: false
  mount_uploader :photo, PhotoUploader
end
