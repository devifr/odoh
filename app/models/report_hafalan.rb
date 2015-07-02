class ReportHafalan < ActiveRecord::Base
  belongs_to :user, class_name: 'Mamum'
  belongs_to :surah
  scope :by_murrobi, ->(murrobi) do
                                    mamums_ids = murrobi.children_ids
                                    where(user_id: mamums_ids)
                                  end
end