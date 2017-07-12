json.extract! pharm, :id, :commune, :pharma_name, :owner_name, :sub_owner_name, :description, :tel, :adresse, :lat, :long, :h_openning, :h_closing, :speciality, :created_at, :updated_at
json.url api_v1_pharm_url(pharm, format: :json)
