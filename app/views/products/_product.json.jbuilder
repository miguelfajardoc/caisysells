json.extract! product, :id, :name, :cost, :price, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
