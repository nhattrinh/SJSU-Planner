class Grade < ApplicationRecord
  belongs_to :semester
  belongs_to :course
  belongs_to :student

  validates :letter_grade, presence: true
  validates :letter_grade, inclusion: { in: ["A+","A","A-","B+","B","B-","C+","C","C-","D","F","W",""]}
end
