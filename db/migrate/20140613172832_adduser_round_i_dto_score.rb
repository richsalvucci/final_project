class AdduserRoundIDtoScore < ActiveRecord::Migration
  def change
    add_column :scores, :user_round_id, :integer
  end
end
