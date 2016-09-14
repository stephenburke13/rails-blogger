class TagsController < ApplicationController
	def index
		@tag = Tag.all
	end
	def show
		@tag = Tag.find(params[:id])
	end
	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash.notice = "'#{@tag.name}' has been DESTROYED"

		redirect_to tags_path
	end
end
