class CreateHomeOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :home_offers do |t|

      t.string :species
      t.string :race
      t.string :gender
      t.string :castrated
      t.string :stable
      t.text :stable_alt
      t.date :from_then_on

      t.boolean :archived, default: false
      t.boolean :rideable
      t.text :search_field, default: ""

      t.timestamps
    end

    add_column :home_offers, :age, :boolean, default: true
    add_column :home_offers, :size, :boolean, default: true
    
    add_column :home_offers, :min_age, :integer
    add_column :home_offers, :max_age, :integer
    add_column :home_offers, :min_size, :integer
    add_column :home_offers, :max_size, :integer

  end
end
