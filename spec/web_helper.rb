def add_full_entry
  visit '/links/new'
  fill_in 'title', with: 'AAA'
  fill_in 'url', with: 'BBB'
  fill_in 'tag', with: 'CCC'
  click_button 'Submit'
end

def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email, with: 'example@example.com'
  fill_in :password, with: 'example'
  click_button 'Sign up'
end