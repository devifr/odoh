class Surah < ActiveRecord::Base
  default_scope { order(id: :asc) }
end