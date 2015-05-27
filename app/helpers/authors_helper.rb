module AuthorsHelper

	def zero_authors_or_authenticated
    unless Author.count == 0 || current_user
      redirect_to root_path
      return false
    end
  end

	def require_login
	  unless current_user
	    redirect_back_or_to(root_path, alert: 'You must be logged in to do that')
	    return false
	  end
	end
  
end
