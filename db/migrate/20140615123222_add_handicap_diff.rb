class AddHandicapDiff < ActiveRecord::Migration
  def change
    rename_column :handicaps, :index, :handicap_index
    add_column :handicaps, :handicap_differential, :integer
  end
end
