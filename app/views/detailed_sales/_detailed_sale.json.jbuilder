json.extract! detailed_sale, :id, :quantity, :current_price, :total_price, :discount, :product_id, :sale_id, :created_at, :updated_at
json.url detailed_sale_url(detailed_sale, format: :json)
