module TopicsHelper

	def topic_author(topic)
		user_signed_in? && current_user.id == topic.user_id
	end

	def reply_author(reply)
		user_signed_in? && current_user.id == reply.user_id
	end

end
