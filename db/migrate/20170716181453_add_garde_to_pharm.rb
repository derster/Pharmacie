class AddGardeToPharm < ActiveRecord::Migration[5.0]
  def change
    add_column :pharms, :garde, :boolean
  end
end
