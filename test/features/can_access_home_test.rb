require "test_helper"

feature "CanAccessHome" do
  scenario "this test is sound" do
    visit root_path
    visit "/"
    page.must_have_content "Welcome"
    page.wont_have_content "Goodbye All!"
  end
end
