class Admin < User
  ROLE_ID = 1
  default_scope { where(role_id: ROLE_ID) }
end