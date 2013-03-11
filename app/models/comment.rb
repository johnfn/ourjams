class Comment < ActiveRecord::Base
  attr_accessible :content, :entry_id, :user_id
  belongs_to :entry
  belongs_to :user
end
