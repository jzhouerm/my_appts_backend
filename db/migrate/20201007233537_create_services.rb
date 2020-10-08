class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description, default: "N/A"
      t.integer :amount, default: 0

      t.timestamps
    end
  end
end
