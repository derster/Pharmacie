class CreatePharms < ActiveRecord::Migration[5.0]
  def change
    create_table :pharms do |t|
      t.string :commune
      t.string :pharma_name
      t.string :owner_name
      t.string :sub_owner_name
      t.text :description
      t.string :tel
      t.string :adresse
      t.string :lat
      t.string :long
      t.string :h_openning
      t.string :h_closing
      t.text :speciality

      t.timestamps
    end
  end
end
