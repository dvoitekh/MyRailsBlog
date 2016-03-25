atom_feed do |feed|
	feed.title "My blog"
	feed.updated @posts.maximum(:updated_at)

	@posts.each do |post|
		feed.entry post, published: post.published_at do |entry|
			entry.title post.name
			entry.content post.text
		end
	end
end

