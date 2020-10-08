class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :service_id
      t.integer :client_id
      t.string :start
      t.string :end
      t.text :note, default: ""
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
