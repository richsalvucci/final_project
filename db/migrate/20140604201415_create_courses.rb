class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :slope
      t.decimal :rating

      t.timestamps
    end
  end
end
