class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :front_total
      t.integer :back_total
      t.integer :round_total
      t.timestamps
    end
  end
end
