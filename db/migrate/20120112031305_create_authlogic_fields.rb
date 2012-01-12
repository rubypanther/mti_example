class CreateAuthlogicFields < ActiveRecord::Migration
  def up
    create_table :authlogic_fields, :id => false do |t|
      t.string :type
      t.string :login
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :single_access_token
      t.string :perishable_token
      t.integer :login_count
    end
  end

  def down
    drop_table :authlogic_fields
  end
end
