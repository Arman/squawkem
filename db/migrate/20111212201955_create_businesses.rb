class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :phone
      t.string :url
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
