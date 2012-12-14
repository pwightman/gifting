class ListUser < ActiveRecord::Base
  belongs_to :list
  belongs_to :user
  # attr_accessible :title, :body
end
