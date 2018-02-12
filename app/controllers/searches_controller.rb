class SearchesController < ApplicationController


	def new
		@search = Search.new
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
		@categories = Category.all
		@countries = Country.all.order(title: :asc)
		@posts = Post.all
	end

	private

	def search_params
		params.require(:search).permit(:keywords, :category_id, :country_id )
	end
end
