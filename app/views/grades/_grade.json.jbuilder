json.extract! grade, :id, :letter_grade, :semester_id, :course_id, :student_id, :created_at, :updated_at
json.url grade_url(grade, format: :json)