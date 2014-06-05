class AddTeesToCourseForSlope < ActiveRecord::Migration
  def change
    add_column :courses, :tee_one_slope, :decimal
    add_column :courses, :tee_two_slope, :decimal
    add_column :courses, :tee_three_slope, :decimal
    add_column :courses, :tee_four_slope, :decimal
    remove_column :courses, :slope
  end
end
