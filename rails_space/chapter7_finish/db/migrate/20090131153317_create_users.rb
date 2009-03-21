class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      # Rails 1.X way
      t.column :screen_name,  :string
      # Rails 2.X way
      # t.string :screen_name
      t.column :email,        :string
      t.column :password,     :string
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
