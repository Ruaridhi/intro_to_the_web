def sign_in_and_play
  visit '/'
  fill_in 'name1', with: 'Rory'
  fill_in 'name2', with: 'Seb'
  click_button 'Submit'
end
