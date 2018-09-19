require './app'

feature 'visit_homepage', type: :feature do
  # scenario 'hompage says testing infrastructure working!' do
  #   visit '/'
  #   expect(page).to have_content('Testing infrastructure working!')
  # end


  scenario 'prints page title and users put in names' do
    visit '/'
    fill_in 'name1', with: 'Rory'
    fill_in 'name2', with: 'Seb'
    click_button 'Submit'
    expect(page).to have_content('Rory vs Seb')
  end
end
