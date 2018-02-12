class PagesController < ApplicationController

	def index
		
	end

	def agn
		@posts = Post.all
	end

end