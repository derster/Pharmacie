class RemoveAdresseFromPharm < ActiveRecord::Migration[5.0]
  def change
    remove_column :pharms, :adresse, :string
  end
end
