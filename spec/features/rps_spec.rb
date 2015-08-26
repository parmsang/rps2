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
  scenario 'I can choose rock' do
    visit '/play'
    select 'rock', :from => 'choices'
    click_button 'Submit'
    expect(page).to have_content "You have chosen rock"
  end
  scenario 'I can choose paper' do
    visit '/play'
    select 'paper', :from => 'choices'
    click_button 'Submit'
    expect(page).to have_content "You have chosen paper"
  end
  scenario 'I can choose scissors' do
    visit '/play'
    select 'scissors', :from => 'choices'
    click_button 'Submit'
    expect(page).to have_content "You have chosen scissors"
  end
#  scenario 'Computer can pick a random option' do
#    visit '/play'
#    click_button 'Submit'
#    expect(@computer).to be_between(-5, 10)
#    expect(page).to have_content "Computer has chosen rock"
#  end
end