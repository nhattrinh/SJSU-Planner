class Student < ApplicationRecord
  belongs_to :user
  has_many :grades,
           dependent: :destroy
  has_many :courses,
           through: :grades
  has_many :semesters,
           through: :grades

           validates :first_name, presence:  true
           validates :last_name, presence:  true

  def full_name
    "#{first_name} #{last_name}"
  end
end
