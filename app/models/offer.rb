class Offer < ApplicationRecord
  mount_uploader :image, ImagesUploader
  paginates_per 5

  belongs_to :company
  has_many :applies
  has_many :users, through: :applies
  accepts_nested_attributes_for :users
end
