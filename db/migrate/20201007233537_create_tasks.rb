class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :start
      t.string :end
      t.text :note, default: ""
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
