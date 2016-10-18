class CoursePrereq < ApplicationRecord
  belongs_to :course
  belongs_to :prereq
end
