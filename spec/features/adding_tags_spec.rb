feature 'Add tags' do
  scenario 'I can add a tag to a new link in the bookmark manager' do
    visit('/links/new')
    fill_in 'url', with: 'http://www.amazon.co.uk'
    fill_in 'title', with: 'Amazon'
    fill_in 'tags', with: 'shopping'
    click_button('Add link')
    expect(current_path).to eq('/links')
    link = Link.first
    expect(link.tags.map(&:name)).to include('shopping')
  end

  scenario 'Add multiple tags and check that they are all present in the new link' do
    visit '/links/new'
    fill_in 'url', with: 'http:www.amazon.co.uk'
    fill_in 'title', with: 'Amazon'
    fill_in 'tags', with: 'shopping technology groceries'
    click_button('Add link')
    link = Link.first
    expect(link.tags.map(&:name)).to include('shopping', 'groceries')
  end
end
