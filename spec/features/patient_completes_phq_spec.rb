require "rails_helper"

RSpec.feature "A patient checks into the app" do
  before do
    FactoryBot.create(:screener)
    FactoryBot.create(:option)
  end

  scenario "for a scheduled appointment" do
    visit root_path

    click_on "Start check in"

    expect(page).to have_content "Please complete all of the steps on this page"

    click_on "Start PHQ screener"
    
    expect(page).to have_content("Over the past 2 weeks, how often have you been bothered by any of the following problems?")
    expect(page).to have_content("Little interest or pleasure in doing things")
    expect(page).to have_content("Not at all")
    expect(page).to have_content("Several days")
    expect(page).to have_content("More than half the days")
    expect(page).to have_content("Nearly every day")
  end
end
