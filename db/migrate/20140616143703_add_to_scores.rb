class AddToScores < ActiveRecord::Migration
  def change
    add_column :scores, :hole_number, :integer
    add_column :scores, :par, :integer
    add_column :scores, :back_tee_yardage, :integer
    add_column :scores, :middle_tee_yardage, :integer
    add_column :scores, :front_tee_yardage, :integer
    add_column :scores, :forward_tee_yardage, :integer
    add_column :scores, :mens_handicap, :integer

  end
end
