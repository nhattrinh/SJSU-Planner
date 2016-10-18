class Semester < ApplicationRecord
    has_many :grades,
             dependent: :nullify
    has_and_belongs_to_many :courses,
                            join_table: :semesters_courses

    validates :name, presence:  true
    validates :year, presence:  true
    validates :year, length: { is: 4 }
    validates :name, inclusion: { in: ["Fall", "Spring" ,"Winter","Summer"]}
end
