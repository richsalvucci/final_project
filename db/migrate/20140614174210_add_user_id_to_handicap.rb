class AddUserIdToHandicap < ActiveRecord::Migration
  def change
    add_column :handicaps, :user_id, :integer
    add_column :users, :index, :decimal

  end
end
