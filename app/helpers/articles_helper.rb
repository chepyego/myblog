module ArticlesHelper
	private
	def article_params
		params.require(:article).permit(:title, :body, :tag_List)
	end
end
