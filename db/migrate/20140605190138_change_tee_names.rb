class ChangeTeeNames < ActiveRecord::Migration
  def change
    rename_column :courses, :tee_one_rating, :back_tee_rating
    rename_column :courses, :tee_one_slope, :back_tee_slope
    rename_column :courses, :tee_two_rating, :middle_tee_rating
    rename_column :courses, :tee_two_slope, :middle_tee_slope
    rename_column :courses, :tee_three_rating, :front_tee_rating
    rename_column :courses, :tee_three_slope, :front_tee_slope
    rename_column :courses, :tee_four_rating, :forward_tee_rating
    rename_column :courses, :tee_four_slope, :forward_tee_slope
    rename_column :holes, :tee_one_yardage, :back_tee_yardage
    rename_column :holes, :tee_two_yardage, :middle_tee_yardage
    rename_column :holes, :tee_three_yardage, :front_tee_yardage
    rename_column :holes, :tee_four_yardage, :forward_tee_yardage
  end
end
