require 'rails_helper'

describe 'user show page' do
  it 'allows user to browse all gifs' do
    user = User.create(first_name: "Lonzo", last_name: "Ball", email: "BBB@aol.com", password: "LaMello", role: 0)
    category_1 = Category.create(name: 'funny')
    gif_1 = category_1.gifs.create(image_url: "https://media2.giphy.com/media/JIX9t2j0ZTN9S/200w.webp")
    category_2 = Category.create(name: 'happy')
    gif_2 = category_2.gifs.create(image_url: "https://media1.giphy.com/media/BlVnrxJgTGsUw/giphy.webp")

    visit root_path
    click_on "I already have an account"
    expect(current_path).to eq(login_path)
    fill_in :email, with: user.email
    fill_in :password, with: user.password

    click_on "Log In"

    expect(current_path).to eq(user_path(user))

    click_on "Browse Gif's"

    expect(current_path).to eq(gifs_path)

    expect(page).to have_content("Gif's")
    # expect(page).to have_content(gif_1.category.name)
    # expect(page).to have_content(gif_2.category.name)
  end
  it "displays a list of all the gifs they've favorited" do
        user = User.create(first_name: "Lonzo", last_name: "Ball", email: "BBB.@aol.com", password: "LaMello", role: 0)
        category_1 = Category.create(name: 'funny')
        gif_1 = category_1.gifs.create(image_url: "https://media2.giphy.com/media/JIX9t2j0ZTN9S/200w.webp")
        category_2 = Category.create(name: 'happy')
        gif_2 = category_2.gifs.create(image_url: "https://media1.giphy.com/media/BlVnrxJgTGsUw/giphy.webp")
        favorite_1 = Favorite.create(gif: gif_1, user: user)
        favorite_2 = Favorite.create(gif: gif_2, user: user)

        visit user_favorites_path(user)

        expect(page).to have_content('Favorites')
        # expect(page).to have_content(favorite_1.gif.category.name)
        # expect(page).to have_content(favorite_2.gif.category.name)
  end
end
