require 'rails_helper'

describe 'login workflow' do
  it 'allows registered users to log in successfully' do
    user = User.create(first_name: "Kobe", last_name: "Bryant", email: "BlackMamba@gmail.com", password: "shaq")

    visit root_path
    click_on "I already have an account"
    expect(current_path).to eq(login_path)
    fill_in :email, with: user.email
    fill_in :password, with: user.password

    click_on "Log In"
    
    expect(current_path).to eq(user_path(user))

    expect(page).to have_content("Log Out")
    expect(page).to_not have_content("I already have an account")
  end
end
