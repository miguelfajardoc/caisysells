class Sale < ApplicationRecord
  acts_as_tenant :account

  belongs_to :creator, class_name: 'User'
  belongs_to :client
  has_and_belongs_to_many :products
end
