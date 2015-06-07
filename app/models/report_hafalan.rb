class ReportHafalan < ActiveRecord::Base
  belongs_to :user, class_name: 'Mamum'
  belongs_to :surah
end