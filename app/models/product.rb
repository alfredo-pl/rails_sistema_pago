class Product < ApplicationRecord
  has_many_attached :images
  has_one :digital
  has_one :physical
end
