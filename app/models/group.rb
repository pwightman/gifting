class Group < ActiveRecord::Base
  attr_accessible :title
  has_many :lists
  has_many :group_users
  has_many :users, through: :group_users

  def members
    self.users
  end
end
