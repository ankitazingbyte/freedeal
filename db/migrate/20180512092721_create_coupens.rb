class CreateCoupens < ActiveRecord::Migration[5.1]
  def change
    create_table :coupens do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :coupen

      t.timestamps
    end
  end
end
