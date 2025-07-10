class Product < ApplicationRecord

    acts_as_tenant :account

    belongs_to :category, optional: true
     
end
