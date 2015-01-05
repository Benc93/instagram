require 'rails_helper'

feature 'pictures' do
  context 'no pictures have been added' do
    scenario 'should display a prompt to add a picture' do
      visit '/pictures'
      expect(page).to have_content 'No pictures'
      expect(page).to have_link 'Add a picture'
    end
  end
end

context 'pictures have been added' do
  before do
    Picture.create(name: 'Skydive')
  end

  scenario 'display picturess' do
    visit '/pictures'
    expect(page).to have_content('Skydive')
    expect(page).not_to have_content('No pictures yet')
  end
end