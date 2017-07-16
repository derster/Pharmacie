class RemoveSubOwnerNameFromPharm < ActiveRecord::Migration[5.0]
  def change
    remove_column :pharms, :sub_owner_name, :string
  end
end
