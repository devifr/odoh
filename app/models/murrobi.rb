class Murrobi < User
  has_ancestry
  ROLE_ID = 2
  default_scope { where(role_id: ROLE_ID) }

  validates_presence_of :group, :email

  scope :filter_by_group, ->(group){ where(group: group) }

  def children
    Mamum.where(ancestry: self.id)
  end

  def children_ids
    Mamum.where(ancestry: self.id).pluck(:id)
  end
end