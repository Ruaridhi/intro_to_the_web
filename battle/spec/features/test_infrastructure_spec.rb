require './app'

feature 'visit_homepage', type: :feature do
  scenario 'prints page title and users put in names' do
    visit '/'
    fill_in 'name1', with: 'Rory'
    fill_in 'name2', with: 'Seb'
    click_button 'Submit'
    expect(page).to have_content('Rory vs Seb')
  end

  scenario 'Hit points revealed' do
    visit '/'
    fill_in 'name1', with: 'Rory'
    fill_in 'name2', with: 'Seb'
    click_button 'Submit'
    expect(page).to have_content('Seb\'s Hit Points: 100')
    save_and_open_page(path = nil)
  end
end
