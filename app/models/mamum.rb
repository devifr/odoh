class Mamum < User
  has_ancestry
  ROLE_ID = 3
  default_scope { where(role_id: ROLE_ID) }

  validates_presence_of :group, :email

  def self.filter_by_murrobi(user)
    return self.all if user.role_id == 1
    return where(ancestry: user.id) if user.role_id == 2
  end

  def parent
    Murrobi.find self.parent_id
  end
end