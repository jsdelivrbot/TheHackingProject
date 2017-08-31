class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete, default: false, null:false

      t.timestamps
    end
  end
end
