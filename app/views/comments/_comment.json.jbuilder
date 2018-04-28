json.extract! comment, :id, :name, :email, :website_url, :message, :created_at, :updated_at
json.url comment_url(comment, format: :json)
