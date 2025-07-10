class Product < ApplicationRecord

    acts_as_tenant :account

    belongs_to :category, optional: true
    has_and_belongs_to_many :sales
end
