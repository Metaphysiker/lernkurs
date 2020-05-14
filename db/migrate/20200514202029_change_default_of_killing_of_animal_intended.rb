class ChangeDefaultOfKillingOfAnimalIntended < ActiveRecord::Migration[5.2]
  def change
    change_column_default :home_requests, :killing_of_animal_intended, from: true, to: false
    change_column_default :home_requests, :killing_of_animal_scheduled, from: true, to: false
  end
end
