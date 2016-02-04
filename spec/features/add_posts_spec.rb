require "rails_helper"
RSpec.feature "adding posts" do
	scenario "allow a user to add a post" do
		post=create(:post, title: "My Other Title")
		visit post_path(post)
		expect(page).to have_content("My Other Title")
		expect(page).to have_content("New Hello")
	end
end
	
