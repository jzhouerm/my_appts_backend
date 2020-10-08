class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :business_name
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
