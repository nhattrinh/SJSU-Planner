class Course < ApplicationRecord
  belongs_to :semester
    validates :subject, presence: true
    validates :number, presence: true
    validates :credits, presence: true
    validates :grade, :length => { :is => 1}
    validates :grade, :inclusion => { :in => ["A", "B", "C", "D", "F"]}
end
