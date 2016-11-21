json.extract! post, :id, :post_title, :post_content, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)