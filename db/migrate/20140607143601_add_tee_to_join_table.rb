class AddTeeToJoinTable < ActiveRecord::Migration
  def change
    add_column :user_rounds, :tee, :string
  end
end
