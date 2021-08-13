json.extract! resource, :id, :name, :url, :course_id, :lesson_id, :created_at, :updated_at
json.url resource_url(resource, format: :json)
