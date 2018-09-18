require 'app'

describe Battle do
  describe 'visit_homepage', type: :feature do
    it 'hompage says testing infrastructure working!' do
      visit '/'
      expect(page).to have_content('Testing infrastructure working!')
    end
  end
end
