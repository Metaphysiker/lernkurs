class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :firstname
      t.string :lastname
      t.string :street
      t.string :city
      t.string :plz
      t.string :email
      t.string :telefon
      t.string :payment
      t.text :motivation
      t.text :expectation
      t.text :thoughts
      t.text :aboutme
      t.text :food

      t.timestamps
    end
  end
end
