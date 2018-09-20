require './app'

feature 'visit_homepage', type: :feature do
  scenario 'prints page title and users put in names' do
    sign_in_and_play
    expect(page).to have_content('Rory vs Seb')
  end

  scenario 'Hit points revealed' do
    sign_in_and_play
    expect(page).to have_content('Seb\'s Hit Points: 100')
  end
end

feature 'attack' do
  scenario 'Confirmation of attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Rory has attacked Seb')
  end
  
  scenario 'Player HP is reduced' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("Seb\'s Hit Points: 90") 
  end

end

