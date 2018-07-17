require 'rails_helper'

describe 'User visits new category page' do
  context 'as admin' do
    it 'allows admin to create a category' do
      admin = User.create(first_name: "Kobe", last_name: "Bryant", email: "BlackMamba@gmail.com", password: "shaq", role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_admin_category_path

      expect(page).to have_content("Create a new category")
    end
  end
  context 'as a default user' do
    it 'does not allow default user to create a category' do
      user = User.create(first_name: "Lonzo", last_name: "Ball", email: "BBB.@aol.com", password: "LaMello", role: 0)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit new_admin_category_path

      expect(page).to_not have_content("Create a new category")
      expect(page).to have_content("The page you were looking for doesn't exist")
    end
  end
end
