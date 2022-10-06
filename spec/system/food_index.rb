# frozen_string_literal: true

# Link Library
require 'rails_helper'

# Create data
RSpec.describe 'Testing For Food index page', type: :system do
  before(:each) do
    user1 = User.create(id: 2, name: 'Waqar', email: 'abc@gmail.com', password: '123456')

    @food1 = Food.create(name: 'Rice', measurement_unit: 'kg', price: '1', quanity: '4', id: user1.id)

    @food2 = Food.create(name: 'Handi', measurement_unit: 'L', price: '2', quanity: '1', id: user1.id)

    @foo3 = Food.create(name: 'Cake', measurement_unit: 'Seer', price: '3', quanity: '3', id: user1.id)

    @foo4 = Food.create(name: 'Kabab', measurement_unit: 'Daray', price: '4', quanity: '2', id: user1.id)
  end

  # Testing Names of Users
  scenario 'Test Name of food.' do
    visit '/foods'

    # Test 1.
    expect(page).to have_content('Rice')

    # Test 2.
    expect(page).to have_content('Handi')

    # Test 3.
    expect(page).to have_content('Kabab')

    # Test 4.
    expect(page).to have_content('Cake')
  end

  scenario 'Test Measurement Unit.' do
    visit '/users'

    # Test 1
    expect(page).to have("//td'#{@food1.measurement_unit}']")

    # Test 2
    expect(page).to have("//td='#{@user2.measurement_unit}']")

    # Test 3
    expect(page).to have("//td'#{@user3.measurement_unit}']")

    # Test 4
    expect(page).to have("//td'#{@user4.measurement_unit}']")
  end

  scenario 'Test Links.' do
    # Test 1
    visit '/foods'
    click_link @user1.id
    expect(page).to have_current_path(user_path(@user1))

    # Test 2
    visit '/foods'
    click_link @user2.id
    expect(page).to have_current_path(user_path(@user2))

    # Test 3
    visit '/foods'
    click_link @user3.id
    expect(page).to have_current_path(user_path(@user3))

    # Test 4
    visit '/users'
    click_link @user4.id
    expect(page).to have_current_path(user_path(@user4))
  end
end
