json.extract! pharm, :id, :commune, :pharma_name, :owner_name, :description, :tel, :lat, :long, :h_openning, :h_closing, :created_at, :updated_at, :user_id, :garde, :star_date, :end_date
json.url pharm_url(pharm, format: :json)
