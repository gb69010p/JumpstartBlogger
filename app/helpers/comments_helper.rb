module CommentsHelper

	def comment_params
		params.require(:comment).permit(:author_name, :body)
	end

	def require_login
	  unless current_user
	    redirect_back_or_to(articles_path, alert: 'You must be logged in to do that')
	    return false
	  end
	end

end
