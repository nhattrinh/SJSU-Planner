class Student < ApplicationRecord
  belongs_to :user
  has_many :grades
  has_many :courses,
           through :grades
  has_many :semesters,
           through :grades
end
