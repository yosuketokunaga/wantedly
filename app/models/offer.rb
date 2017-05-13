class Offer < ApplicationRecord
  mount_uploader :image, ImagesUploader
  paginates_per 5
  belongs_to :company
end
