class AddAnimalAltToHomeRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :home_requests, :animal_alt, :string, default: ""
  end
end
