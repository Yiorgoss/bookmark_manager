feature 'Creating links' do
  scenario 'I can save links' do
    visit '/links'
    click_button 'Add link'
    fill_in 'title', with: "Lou's blog"
    fill_in 'url', with: 'http://makersblog.herokuapp.com'
    click_button 'Submit'
    within 'ul#links' do
      expect(page).to have_content("Lou's blog")
    end
  end
end
