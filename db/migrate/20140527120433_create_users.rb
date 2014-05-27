class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :usertype # 1 : admin, 2 : humantour, 3 : normal user
      t.timestamps
    end
  end
end
