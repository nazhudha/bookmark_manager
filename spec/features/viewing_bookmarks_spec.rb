feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario "Viewing Bookmarks page" do
    visit('/bookmarks')
    expect(page).to have_content "https://www.google.com/"
    end
end

