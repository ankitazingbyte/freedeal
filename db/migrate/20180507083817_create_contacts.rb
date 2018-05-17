class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end