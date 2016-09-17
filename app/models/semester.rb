class Semester < ApplicationRecord
    has_many :courses
    validates :name, presence: true
    validates :year, presence: true
end
