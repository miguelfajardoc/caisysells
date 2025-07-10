class Client < ApplicationRecord
  acts_as_tenant :account

  belongs_to :zone
end
