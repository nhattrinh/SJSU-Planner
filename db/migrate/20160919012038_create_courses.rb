class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :subject
      t.integer :number
      t.integer :credits
      t.string :grade
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
