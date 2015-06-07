class Murrobi < User
  ROLE_ID = 2
  default_scope { where(role_id: ROLE_ID) }

  validates_presence_of :group, :email

  scope :filter_by_group, ->(group){ where(group: group) }
end