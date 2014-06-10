class AddHandicapsToHoles < ActiveRecord::Migration
  def change
    add_column :holes, :mens_handicap, :integer
    add_column :holes, :womens_handicap, :integer
  end
end
