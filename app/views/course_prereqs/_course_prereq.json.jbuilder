json.extract! course_prereq, :id, :course_id, :prereq_id, :created_at, :updated_at
json.url course_prereq_url(course_prereq, format: :json)