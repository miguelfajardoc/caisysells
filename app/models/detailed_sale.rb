class DetailedSale < ApplicationRecord
  acts_as_tenant :account
  
  belongs_to :product
  belongs_to :sale
end
