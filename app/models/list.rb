class List < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :list_items

  has_many :list_users
  has_many :users, through: :list_users

  def members
    self.users
  end
end
