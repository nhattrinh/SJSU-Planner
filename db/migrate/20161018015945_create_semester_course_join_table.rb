class CreateSemesterCourseJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :semesters, :courses, table_name: :semesters_courses
  end
end
