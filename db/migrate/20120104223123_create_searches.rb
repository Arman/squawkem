class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :location
      t.integer :category_id

      t.timestamps
    end
  end
end
