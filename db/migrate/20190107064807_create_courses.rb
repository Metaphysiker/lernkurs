class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title, default: ""
      t.text :description, default: ""
      t.string :topic, default: ""
      t.integer :order

      t.timestamps
    end
  end
end
