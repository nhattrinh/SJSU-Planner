class CreateCoursePrereqs < ActiveRecord::Migration[5.0]
  def change
    create_table :course_prereqs do |t|
      t.integer :course_id
      t.integer :prereq_id

      t.timestamps
    end

    add_index :course_prereqs, :course_id
    add_index :course_prereqs, :prereq_id
    add_index :course_prereqs, [:course_id, :prereq_id], unique: true
  end
end
