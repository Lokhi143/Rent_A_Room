json.extract! user, :id, :email, :password, :first_name, :last_name, :user_name, :mobile_number, :role_id, :created_at, :updated_at
json.url user_url(user, format: :json)
