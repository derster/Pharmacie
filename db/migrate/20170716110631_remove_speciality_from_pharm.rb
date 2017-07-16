class RemoveSpecialityFromPharm < ActiveRecord::Migration[5.0]
  def change
    remove_column :pharms, :speciality, :string
  end
end
