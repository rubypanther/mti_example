class CreateMembers < ActiveRecord::Migration
  def up
    create_table :members, :id => false, :options => 'INHERITS (users,authlogic_fields)' do |t|
      t.integer :referred_by_id
    end
    execute %q!ALTER TABLE members ADD CONSTRAINT members_pkey PRIMARY KEY(id)!
  end

  def down
    drop_table :members
  end

end
