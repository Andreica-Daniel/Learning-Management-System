json.extract! lesson, :id, :course_id, :teacher_id, :name, :content, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
