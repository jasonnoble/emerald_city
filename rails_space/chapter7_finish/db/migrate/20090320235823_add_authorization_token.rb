class AddAuthorizationToken < ActiveRecord::Migration
  def self.up
    add_column :users, :authorization_token, :string
  end

  def self.down
    remove_column :users, :authorization_token
  end
end
