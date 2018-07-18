require 'rails_helper'

describe 'user visits favorites index page' do
  it "displays a list of all the gifs they've favorited" do
    category_1 = Category.create(name: 'funny')
    gif_1 = category_1.gifs.create(image_url: "https://media2.giphy.com/media/JIX9t2j0ZTN9S/200w.webp")
    category_2 = Category.create(name: 'happy')
    gif_2 = category_2.gifs.create(image_url: "https://media1.giphy.com/media/BlVnrxJgTGsUw/giphy.webp")
    user = User.create(first_name: "Lonzo", last_name: "Ball", email: "BBB.@aol.com", password: "LaMello", role: 0)
    favorite_1 = Favorite.create(gif: gif_1, user: user)
    favorite_2 = Favorite.create(gif: gif_2, user: user)

    visit user_favorites_path(user)
    save_and_open_page

    expect(page).to have_content(favorite_1)
    expect(page).to have_content(favorite_2)
  end
end
