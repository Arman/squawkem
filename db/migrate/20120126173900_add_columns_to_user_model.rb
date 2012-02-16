class AddColumnsToUserModel < ActiveRecord::Migration
  def change
  	 add_column :users, :first_name, :string
  	 add_column :users, :last_name, :string
  	 add_column :users, :zip_code, :string
  	 add_column :users, :gender, :boolean
  	 add_column :users, :birthdate, :date
  end
end
