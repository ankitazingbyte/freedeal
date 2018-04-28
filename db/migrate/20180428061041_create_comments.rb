class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.string :website_url
      t.string :message

      t.timestamps
    end
  end
end
