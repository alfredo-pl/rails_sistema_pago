class Order < ApplicationRecord
    belongs_to :profile
    has_many :order_products
    has_one :payment
end
