json.extract! inventory, :id, :item, :category, :quantity, :expiration, :user_id, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)