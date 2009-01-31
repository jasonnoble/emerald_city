class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :screen_name,  :string
      t.column :email,        :string
      t.column :password,     :string
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
