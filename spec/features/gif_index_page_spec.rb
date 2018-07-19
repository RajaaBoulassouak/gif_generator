require 'rails_helper'

describe 'user visits gif index page' do
  context 'as admin' do
    it 'allows admin to add and delete gifs' do
      admin = User.create(first_name: "Seth", last_name: "Schwartz", email: "BlackMamba@gmail.com", password: "shaq", role: 1)
      category_1 = Category.create(name: 'funny')
      gif_1 = category_1.gifs.create(image_url: "https://media2.giphy.com/media/JIX9t2j0ZTN9S/200w.webp")

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit gifs_path

      click_on 'Add New Gif'
      expect(current_path).to eq(new_admin_gif_path)

      visit gifs_path

      click_on 'Delete'
      expect(current_path).to eq(gifs_path)
    end
  end
end
