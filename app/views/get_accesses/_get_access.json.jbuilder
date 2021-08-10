json.extract! get_access, :id, :full_name, :email, :phne, :work_place, :website, :work_vertical, :use_case, :use_region, :monthly, :approval, :early_access, :created_at, :updated_at
json.url get_access_url(get_access, format: :json)
