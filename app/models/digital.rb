class Digital < ApplicationRecord
  belongs_to :product
    has_one :image, as: :imageable
    has_one_attached :images
end
