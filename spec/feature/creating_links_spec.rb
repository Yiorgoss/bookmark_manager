require 'capybara/rspec'
require 'capybara/dsl'

feature 'save a website' do
  scenario 'add the sites address and title to my bookmark manager' do
    visit '/links/new'
      fill_in 'url',   with: 'http://www.zombo.com/'
      fill_in 'title', with: 'This is Zombocom'
      click_button 'Create link'

      # we expect to be redirected back to the links page
      expect(current_path).to eq '/links'

      within 'ul#links' do
        expect(page).to have_content('This is Zombocom')
  end
end
end
