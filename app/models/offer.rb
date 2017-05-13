class Offer < ApplicationRecord
  # mount_uploader :image, ImageUploader
  paginates_per 5
  belongs_to :company
end
