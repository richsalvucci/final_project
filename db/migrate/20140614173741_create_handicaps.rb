class CreateHandicaps < ActiveRecord::Migration
  def change
    create_table :handicaps do |t|
      t.decimal :index

      t.timestamps
    end
  end
end
