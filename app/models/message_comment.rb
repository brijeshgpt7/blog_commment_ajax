class MessageComment < ActiveRecord::Base
	#attr_accessible :comment, :message_id, :user_id
	belongs_to :message
	validates :comment, :presence => true
end
