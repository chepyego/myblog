json.array!(@authors) do |author|
  json.extract! author, :id, :username, :email, :password
  json.url author_url(author, format: :json)
end
