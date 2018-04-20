class AddFieldToDeal < ActiveRecord::Migration[5.1]
  def change
    add_column :deals, :url_link, :string
  end
end
