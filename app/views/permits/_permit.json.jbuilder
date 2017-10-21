json.extract! permit, :id, :lat, :long, :status_date, :city_source_id, :address, :created_at, :updated_at
json.url permit_url(permit, format: :json)
