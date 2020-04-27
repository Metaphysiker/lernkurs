class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string :email, default: ""
      t.string :purpose, default: ""

      t.timestamps
    end
  end
end
