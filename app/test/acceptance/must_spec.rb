# require_relative 'acceptance_helper'
# require_relative '../../db/seed'
#
# describe('must page', :type => :feature) do
#
#   before do
#     DataMapper.auto_migrate!
#     Seeder.seed!
#     visit '/must/1'
#   end
#
#   def sign_in(email, password)
#     visit '/sign_in'
#     fill_in 'email_box', :with => email
#     fill_in 'password_box', :with => password
#     click_button 'Sign in'
#   end
#
#   it 'shows the correct must information' do
#     expect(page).to have_content 'Julmust'
#     expect(page).to have_content 'Zeunerts'
#     expect(page).to have_content '33cl'
#     expect(page).to have_content '2015'
#   end
#
#   it 'shows all reviews for the must' do
#     expect(page).to have_content 'Lena - Mycket god'
#     expect(page).to have_content 'Orvar - Nä nu jävlar'
#     expect(page).to have_content 'Mats - Besviken'
#   end
#
#   it 'show the correct score for the must' do
#     expect(page).to have_content '2.67'
#   end
#
#   it 'should show the correct stores for the must' do
#     expect(page).to have_content 'Ica - 12:-'
#     expect(page).to have_content 'Pulsen - 19:-'
#   end
#
#   it 'should show the review button for a logged in user' do
#     sign_in('test@test.com', 'test')
#     visit '/must/1'
#     expect(page).to have_content 'Bedöm'
#   end
#
#   it 'should post a review for a logged in user', :driver => :selenium do
#     sign_in('test@test.com', 'test')
#     visit '/must/1'
#     find('#toggle_review').click
#     select "3 ★", :from => "rating"
#     fill_in 'reviewcontent', :with => 'Test'
#     click_button 'Submit'
#     expect(page).to have_content 'test - Test'
#     expect(page).to have_content '2.75'
#   end
# end