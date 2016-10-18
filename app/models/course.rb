class Course < ApplicationRecord
    has_many :grades
    has_and_belongs_to_many :semesters

    has_many :course_prereqs,
             class_name: "CoursePrereq",
             join_table: "course_prereqs",
             foreign_key: "course_id"
    has_many :prereqs,
             through: :course_prereqs

    has_many :course_postreqs,
             class_name: "CoursePrereq",
             join_table: "course_prereqs",
             foreign_key: "prereq_id"
    has_many :postreqs,
             through: :course_postreqs
end
