json.extract! post, :id, :title, :tipo_post, :content, :picture, :created_at, :updated_at
json.url post_url(post, format: :json)
