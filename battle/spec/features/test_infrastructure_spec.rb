require './lib/app'

feature 'visit_homepage', type: :feature do
  # scenario 'hompage says testing infrastructure working!' do
  #   visit '/'
  #   expect(page).to have_content('Testing infrastructure working!')
  # end

  scenario 'users put in name' do
    visit '/'
    fill_in 'name', with: 'Rory'
    click_button 'Submit'
    expect(page).to have_content('Rory')
  end
end
