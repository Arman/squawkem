class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :speed
      t.integer :quality
      t.integer :usability
      t.integer :affordability
      t.integer :warranty
      t.integer :kindness
      t.text :comments
      t.integer :reviewer_id
      t.integer :business_id
      t.timestamps
    end
  end
end
