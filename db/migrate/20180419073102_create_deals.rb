class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.string :image
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
