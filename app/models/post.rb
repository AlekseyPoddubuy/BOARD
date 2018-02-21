class Post < ApplicationRecord

	paginates_per 25

	belongs_to :category
	belongs_to :country
	belongs_to :job
	
end
