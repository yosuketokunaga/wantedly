class Offer < ApplicationRecord
  paginates_per 5
  belongs_to :company
end
