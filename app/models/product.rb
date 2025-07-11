class Product < ApplicationRecord

    acts_as_tenant :account

    belongs_to :category, optional: true
    has_many :detailed_sales
end
