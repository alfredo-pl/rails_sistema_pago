class Physical < ApplicationRecord
  belongs_to :product
    has_many :images, as: :imageable
    has_many_attached :images
end
