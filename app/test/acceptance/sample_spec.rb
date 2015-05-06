require_relative 'acceptance_helper'
require_relative '../../db/seed'

describe('Start page', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seeder.seed!
    visit '/muster'
  end

  it 'responds with successful status' do
    expect( page.status_code ).to eq 200
  end

end