class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title, default: ""
      t.string :language, default: ""
      t.text :description, default: ""
      t.string :keywords, default: ""
      t.string :modul, default: ""
      t.string :slug, default: "", unique: true
      t.string :topic, default: ""
      t.string :duration, default: ""
      t.string :name_of_picture, default: ""
      t.integer :max_points, default: 0
      t.integer :order
      t.text :slides, array: true, default: []

      t.timestamps
    end
  end
end
