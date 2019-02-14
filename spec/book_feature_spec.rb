require_relative "spec_helper"

describe BooksController do 
  it "allows creation of new books" do 
    visit "/books/new"

    fill_in "title", with: "The Way of Kings"
    fill_in "author_name", with: "Brandon Sanderson"
    click_on "Create Book"

    expect(page).to have_content("The Way of Kings by Brandon Sanderson")
  end
end