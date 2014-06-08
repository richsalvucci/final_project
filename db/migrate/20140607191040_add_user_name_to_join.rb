class AddUserNameToJoin < ActiveRecord::Migration
  def change
    add_column :user_rounds, :user_name, :string
  end
end
