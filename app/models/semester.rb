class Semester < ApplicationRecord
    has_many :grades,
             dependent: :nullify
    has_and_belongs_to_many :courses
end
