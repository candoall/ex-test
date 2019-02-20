class CreateExcavators < ActiveRecord::Migration[5.2]
  def change
    create_table :excavators do |t|
      t.string :company_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :crew_on_site
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
