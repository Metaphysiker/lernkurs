class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.integer :counter1, default: 0
      t.integer :counter2, default: 0
      t.string :answer1, default: ""
      t.string :answer2, default: ""

      t.timestamps
    end
  end
end
