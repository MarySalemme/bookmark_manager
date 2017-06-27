feature 'Viewing links' do
  scenario 'See a list of links on the homepage' do
    Link.create(url: 'http:www.google.com',title: 'Google')
    visit '/links'
    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
