require 'rails_helper'

describe 'user adds a gif to their favorites page' do
  describe "they click add to favorites" do
    it 'adds gif to their user show page' do
      user = User.create(first_name: "Lonzo", last_name: "Ball", email: "BBB@aol.com", password: "LaMello", role: 0)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      category = Category.create(name: 'funny')
      category.gifs.create(image_url: "https://media2.giphy.com/media/JIX9t2j0ZTN9S/200w.webp")

      visit gifs_path

      click_button "Add To Favorites"

      expect(current_path).to eq(user_favorites_path(user))
    end
  end
end
