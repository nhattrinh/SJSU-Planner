class Grade < ApplicationRecord
  belongs_to :semester
  belongs_to :course
  belongs_to :student
end
