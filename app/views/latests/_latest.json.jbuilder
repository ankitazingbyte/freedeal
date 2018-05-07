json.extract! latest, :id, :image, :title, :description, :link, :discount, :created_at, :updated_at
json.url latest_url(latest, format: :json)
