class Mamum < User
  has_ancestry
  ROLE_ID = 3
  default_scope { where(role_id: ROLE_ID) }

  validates_presence_of :group, :email

  def self.filter_by_murrobi(user)
    self
    where(ancestry: user.id) if user.role_id == 2
  end
  
end