class AddEndDateToPharm < ActiveRecord::Migration[5.0]
  def change
    add_column :pharms, :end_date, :timestamp
  end
end
