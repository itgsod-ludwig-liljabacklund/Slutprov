require_relative 'acceptance_helper'
require_relative '../../db/seed'

describe('must browser', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seeder.seed!
    visit '/muster'
  end

  it 'shows all the muster' do
    within("table#muster") do
      expect(page).to have_content 'Fulmust'
      expect(page).to have_content 'Julmust'
      expect(page).to have_content 'Kraftmust'
      expect(page).to have_content 'Påskmust'
      expect(page).to have_content 'Stelmust'
    end
  end

  it 'should sort manufacturers correctly', :driver => :selenium do
    find('.manufacturer').click
    find('.manufacturer').click
    expect(first('.odd')).to have_content 'Zeunerts'
    expect(first('.even')).to have_content 'Stockmos'
  end

  it 'should filter the muster correctly', :driver => :selenium do
    visit '/muster?julmust'
    within("table#muster") do
      expect(page).to have_content 'Julmust'
      expect(page).to have_no_content 'Fulmust'
      expect(page).to have_no_content 'Kraftmust'
      expect(page).to have_no_content 'Påskmust'
      expect(page).to have_no_content 'Stelmust'
    end
  end

end