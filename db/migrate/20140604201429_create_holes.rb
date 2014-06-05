class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :tee_one_yardage
      t.integer :tee_two_yardage
      t.integer :tee_three_yardage
      t.integer :tee_four_yardage
      t.integer :par
      t.integer :course_id

      t.timestamps
    end
  end
end
