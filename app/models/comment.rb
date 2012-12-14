class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :list_item
  attr_accessible :content
end
