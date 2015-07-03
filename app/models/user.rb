class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable :registerable, and :omniauthable
  devise :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  belongs_to :role
  has_many :hafalan, class_name: 'ReportHafalan'
  has_many :surah, through: :hafalan

  def murrobi?
    self.role_id == 2
  end

  def admin?
    self.role_id == 1
  end

end
