require_relative 'acceptance_helper'
require_relative '../../db/seed'

describe('signing in', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seeder.seed!
    visit '/sign_in'
  end

  it 'displays all the necessary information' do
    expect(page).to have_content 'email_box'
    expect(page).to have_content 'password_box'
    expect(page).to have_content 'Sign in'
    expect(page).to have_content 'Not a user?'
    expect(page).to have_content 'Sign up'
  end

  it 'logs in a user correctly and redirects to popular muster' do
    fill_in 'email_box', :with => 'test@test.com'
    fill_in 'password_box', :with => 'test'
    click_button 'Sign in'
    expect(page).to have_content 'Populära muster'
  end

  it 'prevents logins with invalid credentials' do
    fill_in 'email_box', :with => 'fail@fail.com'
    fill_in 'password_box', :with => 'fail'
    click_button 'Sign in'
    expect(page).to have_content 'Sign up'
  end



end