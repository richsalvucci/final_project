class CreateUserRounds < ActiveRecord::Migration
  def change
    create_table :user_rounds do |t|
      t.integer :round_id
      t.integer :user_id

      t.timestamps
    end
  end
end
