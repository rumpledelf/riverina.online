json.extract! listing, :id, :name, :url, :logo, :description, :category_id, :address, :lat, :long, :created_at, :updated_at
json.url listing_url(listing, format: :json)
