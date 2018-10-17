require 'rails_helper'

describe 'as a visitor' do
  it 'should list 10 closest gas stations within 6 miles' do
    visit "/"

    fill_in :q, with: "80203"
    click_on 'Locate'

    expect(current_path).to eq("/search")
    expect(page).to have_content("10 Results")
    expect(page).to have_css(".station", count: 10)

    within(first(".station")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".address")
      expect(page).to have_css(".fuel_types")
      expect(page).to have_css(".distance")
      expect(page).to have_css(".access_times")
    end
  end
end
