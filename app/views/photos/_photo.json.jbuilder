json.extract! photo, :id, :content, :image, :created_at, :updated_at
json.url photo_url(photo, format: :json)
