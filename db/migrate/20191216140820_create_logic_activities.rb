class CreateLogicActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :logic_activities do |t|
      t.string :exercise, default: ""
      t.string :correctness, default: ""

      t.timestamps
    end
  end
end
