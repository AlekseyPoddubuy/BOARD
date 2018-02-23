class Search < ApplicationRecord

	def search_posts

		posts = Post.all

		posts = posts.where(["title ILIKE ?", "%#{keywords}%"]) if keywords.present?
		posts = posts.where(category_id: category_id) if category_id.present?
		posts = posts.where(country_id: country_id) if country_id.present?

		return posts

	end

end
