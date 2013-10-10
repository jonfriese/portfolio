require "test_helper"

feature "Visiting the Post Index" do
  scenario "the existing posts, shows list" do
    Post.create(title: "Becoming a Code Fellow", body: "Means striving for excellence.")
    visit posts_path
    page.text.must_include "Becoming a Code Fellow"
  end
end
