class Job < ApplicationRecord

	extend FriendlyId
	friendly_id :title, use: :slugged

	has_many :posts

end
