json.extract! sale, :id, :total, :payed, :account_id, :creator_id, :client_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
