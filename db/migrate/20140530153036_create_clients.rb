class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :gender

      t.timestamps
    end
  end
end
