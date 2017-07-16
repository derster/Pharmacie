class AddStarDateToPharm < ActiveRecord::Migration[5.0]
  def change
    add_column :pharms, :star_date, :timestamp
  end
end
