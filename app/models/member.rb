class Member < User
  set_table_name 'members'
  belongs_to :referred_by, :class_name => 'User'
end
