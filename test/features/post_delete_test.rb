require "test_helper"

feature "Deleting a Post" do
  scenario "post is deleted with a click" do
    Post.create(title: ":cr", body: ":cd")
    visit posts_path
    page.find_by_id("tester").click_on "Destroy"
    page.wont_have_content ":cr"
  end
end

