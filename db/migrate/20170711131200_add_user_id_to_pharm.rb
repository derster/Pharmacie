class AddUserIdToPharm < ActiveRecord::Migration[5.0]
  def change
    add_column :pharms, :user_id, :integer
  end
end
