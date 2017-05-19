class Offer < ApplicationRecord
  mount_uploader :image, ImagesUploader
  paginates_per 5

  belongs_to :company

  has_many :applies
  has_many :users, through: :applies
  has_many :comments

  accepts_nested_attributes_for :applies
end
