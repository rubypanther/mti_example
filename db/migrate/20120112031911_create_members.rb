class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members, :id => false, :options => 'INHERITS (users,authlogic_fields)'
  end
end
