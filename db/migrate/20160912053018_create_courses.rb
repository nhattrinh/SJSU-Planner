class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :subject
      t.integer :number
      t.integer :credits
      t.references :semester, index: true, foreign_key: true

      t.timestamps
    end
  end
end
