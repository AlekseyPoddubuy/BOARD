class Theme < ApplicationRecord

	has_many :topics
	has_many :users, through: :topics

	resourcify

end
