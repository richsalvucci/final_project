class AddHandicapToUser < ActiveRecord::Migration
  def change
    add_column :users, :handicap, :decimal
  end
end
