json.extract! semester_course, :id, :subject, :number, :credits, :grade, :semester_id, :created_at, :updated_at
json.url semester_course_url(semester_course, format: :json)