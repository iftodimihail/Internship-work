json.extract! t_user, :id, :name, :email, :created_at, :updated_at
json.url t_user_url(t_user, format: :json)
