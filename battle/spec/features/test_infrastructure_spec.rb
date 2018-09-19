require './app'


feature 'visit_homepage', type: :feature do
  scenario 'prints page title and users put in names' do
    sign_in_and_play
    expect(page).to have_content('Rory vs Seb')
  end

  scenario 'Hit points revealed' do
    sign_in_and_play
    expect(page).to have_content('Seb\'s Hit Points: 100')
    save_and_open_page(path = nil)
  end
end
