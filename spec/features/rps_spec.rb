require 'spec_helper'

feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    name = 'Winnie'
    fill_in 'name', with: name
    click_button 'Submit'
    expect(page).to have_content "Hello, #{name}"
  end
end
