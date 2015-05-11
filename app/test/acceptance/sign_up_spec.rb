require_relative 'acceptance_helper'
require_relative '../../db/seed'

describe('signing up', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seeder.seed!
    visit '/sign_up'
  end

  it 'displays all the necessary information' do
    expect(page).to have_content 'name_box'
    expect(page).to have_content 'email_box'
    expect(page).to have_content 'password_box'
    expect(page).to have_content 'Sign up'
  end

  it 'creates a user correctly and redirects to popular muster' do
    fill_in 'name_box', :with => 'SignupTest'
    fill_in 'email_box', :with => 'signup@test.com'
    fill_in 'password_box', :with => 'signup'
    click_button 'Sign up'
    expect(page).to have_content 'Signuptest'
    expect(page).to have_content 'Populära muster'
  end

  it 'doesnt create a user with incorrect sign up details' do
    click_button 'Sign up'
    expect(page).to have_content 'Sign up'
  end

end