require 'spec_helper'

feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    name = 'Winnie'
    fill_in 'name', with: name
    click_button 'Submit'
    expect(page).to have_content "Hello, #{name}"
  end
  scenario 'I can play a game' do
    visit '/'
    name = 'Winnie'
    fill_in 'name', with: name
    click_button 'Submit'
    expect(page).to have_content "Choose Game Type"
    click_link 'One Player Game'
    expect(page).to have_content "Rock Paper Scissors"
  end
  scenario 'I can choose a move' do
    visit '/play'
    select 'rock', :from => 'choices'
    click_button 'Submit'
    expect(page).to have_content "You have chosen rock"
  end
end
