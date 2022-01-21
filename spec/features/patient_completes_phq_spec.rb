require "rails_helper"

RSpec.feature "A patient checks into the app" do
  
  scenario "for a scheduled appointment" do
    FactoryBot.create(:screener)
    option1 = FactoryBot.create(:option)

    visit root_path

    click_on "Start check in"

    expect(page).to have_content "Please complete all of the steps on this page"
    expect(page).to have_content "Not Taken"

    click_on "Start PHQ screener"
    
    expect(page).to have_content("Over the past 2 weeks, how often have you been bothered by any of the following problems?")
    expect(page).to have_content("Little interest or pleasure in doing things")
    expect(page).to have_content("Not at all")
    expect(page).to have_content("Several days")
    expect(page).to have_content("More than half the days")
    expect(page).to have_content("Nearly every day")
  
    choose("option_#{option1.id}_2")

    click_on "Save"

    expect(page).to have_content "(Score 2)"
  end



end
