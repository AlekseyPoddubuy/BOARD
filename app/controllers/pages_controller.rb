class PagesController < ApplicationController

	def index
	end

	def admin
		@categories = Category.all
		@posts = Post.all
	end

	def resumelist
		@posts = Post.all
		@search = Search.new
		@resumes = Resume.all
	end

	def topiclist
		@topics = Topic.all
	end

	def agencylist
		@agencies  = Agency.all
	end

end