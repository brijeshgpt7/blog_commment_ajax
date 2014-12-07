class Message < ActiveRecord::Base
	#attr_accessible :title,:content
	has_many :message_comments
	validates :title, :comment, :presence => true
end
