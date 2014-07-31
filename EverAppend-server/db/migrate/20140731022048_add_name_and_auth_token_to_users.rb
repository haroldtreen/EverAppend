class AddNameAndAuthTokenToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :auth_token, :string
  	add_column :users, :username, :string
  end
end
