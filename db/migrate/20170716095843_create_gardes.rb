class CreateGardes < ActiveRecord::Migration[5.0]
  def change
    create_table :gardes do |t|
      t.boolean :garde
      t.timestamp :star_date
      t.timestamp :end_date
      t.references :pharm, foreign_key: true

      t.timestamps
    end
  end
end
