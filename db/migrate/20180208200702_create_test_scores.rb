class CreateTestScores < ActiveRecord::Migration[5.1]
  def change
    create_table :test_scores do |t|
      t.string :name
      t.integer :score
      t.integer :max_score
      t.integer :student_id

      t.timestamps
    end
    add_foreign_key :test_scores, :students
  end
end
