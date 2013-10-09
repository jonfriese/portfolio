require "test_helper"

feature "editing a post" do
  scenario "a post is present" do
    visit posts_path/edit
    click_on "edit"
    fill_in 'Content', with: 'this post is new'
    click_on "submit"
    page.text.must_include 'new post'
  end
end
