class Course < ApplicationRecord
  belongs_to :semester
    validates :subject, presence: true
    validates :number, presence: true
    validates :credits, presence: true
    validates :grade, :length => { :maximum => 2}
    validates :grade, :inclusion => { :in => ["","A","A-","B+","B","B-","C+","C","C-","D","D+", "D-", "F"]}
end
