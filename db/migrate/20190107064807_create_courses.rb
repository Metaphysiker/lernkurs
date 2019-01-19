class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title, default: ""
      t.text :description, default: ""
      t.string :topic, default: ""
      t.string :name_of_picture, default: ""
      t.integer :order
      t.text :slides, array: true, default: []

      t.timestamps
    end
  end
end
