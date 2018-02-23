class PagesController < ApplicationController

	def index
	end

	def admin
		@categories = Category.all
		@posts = Post.all
	end

	def adminposts
		@posts = Post.all
	end

end