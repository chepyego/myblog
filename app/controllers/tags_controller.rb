class TagsController < ApplicationController
	before_filter :require_login, only: [:destroy]
	def show
	@tag = Tag.find(params[:id])
end
def index
	@tag = Tag.all
end
def show
	@tag = Tag.all
			@tag=Tag.find(params[:id])
            @comment = Comment.new
            @comment.tag_id = @tag.id
	end
end
