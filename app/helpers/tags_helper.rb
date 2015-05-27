module TagsHelper

	def require_login
	  unless current_user
	    redirect_back_or_to(tags_path, alert: 'You must be logged in to do that')
	    return false
	  end
	end
	
end
