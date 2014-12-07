class MessagesController < ApplicationController
	def index
		@message=Message.all
	end

	def new
		puts "ddddddddddddddddd"
		@message=Message.new
		respond_to do |format|
			format.js
		end
	end

	def create
		@message=Message.create(message_params)
		@message=Message.all
	    respond_to do |format|
			format.js
		end
	end


	def show
		@message=Message.find(params[:id])
	end
    
    def save_comment
    @message_comment=MessageComment.create(message_comment_params)
      @message=Message.find(params[:message_comment][:message_id])
	 	respond_to do |format|
			format.js
		end
    end

	private
    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
    	params.require(:message).permit(:post, :title, :comment)
    end
    def message_comment_params
    	params.require(:message_comment).permit(:comment, :message_id,:user_id)
    end
end
