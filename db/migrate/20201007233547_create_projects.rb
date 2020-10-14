class CreateProjects< ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.integer :client_id
      t.string :name
      t.string :description, default: "N/A"
      t.integer :amount, default: 0
      t.integer :paid, default: 0
      t.string :start
      t.string :end
      t.boolean :status, default: false
      t.timestamps
    end
  end
end
