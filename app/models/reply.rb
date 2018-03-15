class Reply < ApplicationRecord

	paginates_per 1

	belongs_to :topic
	belongs_to :user

	validates :reply, presence: true
end
