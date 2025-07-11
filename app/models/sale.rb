class Sale < ApplicationRecord
  acts_as_tenant :account

  belongs_to :creator, class_name: 'User'
  belongs_to :client
  has_many :detailed_sales
end
