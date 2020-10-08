class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone, default: "Not provided"
      t.string :email, default: "Not provided"

      t.timestamps
    end
  end
end
