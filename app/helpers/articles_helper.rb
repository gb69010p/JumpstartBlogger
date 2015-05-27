module ArticlesHelper

  def article_params
  	params.require(:article).permit(:title, :body, :tag_list, :image)
  end

	def require_login
	  unless current_user
	    redirect_back_or_to(articles_path, alert: 'You must be logged in to do that')
	    return false
	  end
	end
  
end
