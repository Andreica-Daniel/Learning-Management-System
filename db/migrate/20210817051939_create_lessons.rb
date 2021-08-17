class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.integer :course_id
      t.integer :teacher_id
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
