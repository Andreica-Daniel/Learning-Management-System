class CreateEssaySolutions < ActiveRecord::Migration[6.1]
  def change
    create_table :essay_solutions do |t|
      t.integer :essay_id
      t.integer :student_id
      t.text :solution
      t.string :attachment

      t.timestamps
    end
  end
end
