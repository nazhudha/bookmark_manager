describe '.all' do 
it "returns a list of bookmarks using Bookmark.all" do
  bookmark = Bookmark.all

  expect(bookmark).to include "http://www.makersacademy.com"
  expect(bookmark).to include "http://www.destroyallsoftware.com"
  expect(bookmark).to include "http://www.google.com"
end
end