require "test_helper"

feature "CanAccessHome" do
  scenario "app is running" do
    visit "/"
    page.must_have_content "Welcome"
    page.wont_have_content "Goodbye All!"
  end
end
