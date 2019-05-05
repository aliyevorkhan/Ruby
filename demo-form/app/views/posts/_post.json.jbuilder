json.extract! post, :id, :name, :surname, :age, :school, :adress, :created_at, :updated_at
json.url post_url(post, format: :json)
