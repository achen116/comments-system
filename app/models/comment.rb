class Comment < ActiveRecord::Base
	belongs_to :user
  belongs_to :parent_comment, class_name: self
  has_many   :child_comments, class_name: self,
                              foreign_key: 'parent_comment_id'

	validates :description, presence: true
	validates :user, presence: true
end