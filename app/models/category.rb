class Category < ApplicationRecord
    acts_as_tenant :account
    has_many :products
end
