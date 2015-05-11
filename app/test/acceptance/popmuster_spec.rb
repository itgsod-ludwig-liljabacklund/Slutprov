require_relative 'acceptance_helper'
require_relative '../../db/seed'

describe('popular muster', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seeder.seed!
    visit '/'
  end

  it 'shows the highly rated muster' do
    expect(page).to have_content 'Påskmust'
    expect(page).to have_no_content 'Julmust'
  end

end