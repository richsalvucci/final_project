class AddTeeRatingToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :tee_one_rating, :decimal
    add_column :courses, :tee_two_rating, :decimal
    add_column :courses, :tee_three_rating, :decimal
    add_column :courses, :tee_four_rating, :decimal
    remove_column :courses, :rating
  end
end
