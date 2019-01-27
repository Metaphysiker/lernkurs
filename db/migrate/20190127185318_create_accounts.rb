class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'hstore' unless extension_enabled?('hstore')

    create_table :accounts do |t|

      t.timestamps
    end

    create_table :attendances do |t|
      t.belongs_to :account
      t.belongs_to :course
      t.integer :current_slide, default: 0
      t.text :progress, array: true, default: []
      t.integer :score, default: 0
      t.string :result1, default: ""
      t.string :result2, default: ""
      t.string :result3, default: ""
      t.string :result4, default: ""
      t.string :result5, default: ""

      t.hstore 'exercises'

      t.timestamps
    end

    add_index :attendances, :exercises, using: :gin
  end
end
