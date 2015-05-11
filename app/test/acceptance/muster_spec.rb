# require_relative 'acceptance_helper'
# require_relative '../../db/seed'
#
# describe('must browser', :type => :feature) do
#
#   before do
#     DataMapper.auto_migrate!
#     Seeder.seed!
#     visit '/muster'
#   end
#
#   it 'shows all muster in the database' do
#     within("table#muster") do
#       expect(page).to have_content 'Fulmust'
#       expect(page).to have_content 'Julmust'
#       expect(page).to have_content 'Kraftmust'
#       expect(page).to have_content 'Påskmust'
#       expect(page).to have_content 'Stelmust'
#     end
#   end
#
#   it 'sorts manufacturers alphabetically', :driver => :selenium do
#     find('.manufacturer').click
#     find('.manufacturer').click
#     expect(first('.odd')).to have_content 'Zeunerts'
#     expect(first('.even')).to have_content 'Stockmos'
#   end
#
#   it 'filters the muster correctly when searching via the datatable box', :driver => :selenium do
#     visit '/muster?julmust'
#     within("table#muster") do
#       expect(page).to have_content 'Julmust'
#       expect(page).to have_no_content 'Fulmust'
#       expect(page).to have_no_content 'Kraftmust'
#       expect(page).to have_no_content 'Påskmust'
#       expect(page).to have_no_content 'Stelmust'
#     end
#   end
#
#   it 'searches correctly when using the header search bar', :driver => :selenium do
#     fill_in 'search_box', :with => 'Julmust'
#     find_field('search_box').native.send_key(:enter)
#     within("table#muster") do
#       expect(page).to have_content 'Julmust'
#       expect(page).to have_no_content 'Fulmust'
#       expect(page).to have_no_content 'Kraftmust'
#       expect(page).to have_no_content 'Påskmust'
#       expect(page).to have_no_content 'Stelmust'
#     end
#   end
#
# end