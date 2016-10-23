class CoursePrereq < ApplicationRecord
  belongs_to :postreq, foreign_key: "course_id", class_name: "Course"
  belongs_to :prereq, foreign_key: "prereq_id", class_name: "Course"
end
