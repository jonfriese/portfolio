require "test_helper"

feature "deleting a post" do
  scenario "a post is present" do
    visit post_paths/delete
    page.text.must_have_content 'new post'
    click_on "delete"
    page.text.wont_have_content 'new post'
  end
end
