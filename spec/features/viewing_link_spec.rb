feature 'Viewing links' do
  scenario 'See a list of links on the homepage' do
    Link.create(url: 'http://www.google.com',title: 'Google')
    visit '/links'
    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end

  before :each do
      Link.create(url: 'http:www.//google.com',title: 'Google', tags: [Tag.first_or_create(name: 'search')])
      Link.create(url: 'http:www.//bbc.com',title: 'BBC', tags: [Tag.first_or_create(name: 'news')])
      Link.create(url: 'http:www.//unicorn.com',title: 'Unicorn', tags: [Tag.first_or_create(name: 'unicorns')])
  end

  scenario 'See links filtered by tags' do
    visit 'tags/unicorns'
    within 'ul#links' do
      expect(page).to_not have_content 'Google'
      expect(page).to_not have_content 'BBC'
      expect(page).to have_content 'Unicorn'
    end
  end
end
