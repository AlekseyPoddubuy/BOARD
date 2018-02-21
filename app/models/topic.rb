class Topic < ApplicationRecord

	belongs_to :theme
	belongs_to :user

	has_many :replies, dependent: :destroy

	validates :title, :content, presence: true

	resourcify
end
