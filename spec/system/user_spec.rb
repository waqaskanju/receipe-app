# Link library
require 'rails_helper'

# Test User Show FUnctionality.

# Run this before any test. to get data.
RSpec.describe 'In the users show page', type: :system do
  before(:each) do
    # Select user 1.
    @user1 = User.find_by(id: 1)
  end

  # is there picture/ name / bio/ and number of posts
  scenario 'Check  picture,name, bio and post count' do
    # Visit this URL
    visit user_path(@user1)

    # Testing Name
    expect(page).to have_text(@user1.name)
    # Testing Email.
    expect(page).to have_text(@user1.email)
  end
end
