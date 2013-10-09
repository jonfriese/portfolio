require "test_helper"

feature "creating a post" do
  scenario "with valid data" do

    # Given a completed post form
    visit posts_path
    click_on "New Post"
    fill_in 'Title', with: 'new post'
    fill_in 'Content', with: 'this post is new'

    # When I submit the form
    click_on 'Create Post'

    #Then I shoud see the new post
    page.text.must_include 'new post'
    page.text.must_include 'this new post'

    # Add a success message
    page.text.muts_include 'Post was successfully created'

  end
end
