json.extract! park, :id, :name, :address, :slug, :city, :available, :has_camera, :has_watchman, :zip_code, :district, :price_month, :main_picture, :lat, :lng, :created_at, :updated_at
json.url park_url(park, format: :json)
