class Semester < ApplicationRecord
    has_many :grades
    has_and_belongs_to_many :courses
end
