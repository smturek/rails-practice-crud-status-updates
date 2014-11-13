require 'rails_helper'

feature "Statuses" do

  scenario "User creates new status" do
    visit root_path
    click_on "Create New Status"
    fill_in "Status", with: "I am the best!"
    fill_in "Name", with: "Sherlock"
    fill_in "Likes", with: "100"
    click_on "Create Status"

    expect(page).to have_content("Sherlock")
  end

  scenario "User creates new status with blank status" do
    visit root_path
    click_on "Create New Status"
    fill_in "Name", with: "Sherlock"
    fill_in "Likes", with: "100"
    click_on "Create Status"

    expect(page).to have_content("Status can't be blank")
  end

  scenario "User creates new status with blank name" do
    visit root_path
    click_on "Create New Status"
    fill_in "Status", with: "Sherlock"
    fill_in "Likes", with: "100"
    click_on "Create Status"

    expect(page).to have_content("Name can't be blank")
  end


  scenario "User creates new status with blank likes" do
    visit root_path
    click_on "Create New Status"
    fill_in "Status", with: "Sherlock"
    fill_in "Name", with: "Billy"
    click_on "Create Status"

    expect(page).to have_content("Likes can't be blank")
  end

end
