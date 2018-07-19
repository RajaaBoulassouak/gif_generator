require 'rails_helper'

describe 'gif index page' do
  it 'displays all gifs' do
    category_1 = Category.create(name: 'funny')
    gif_1 = category_1.gifs.create(image_url: "https://media2.giphy.com/media/JIX9t2j0ZTN9S/200w.webp")
    category_2 = Category.create(name: 'happy')
    gif_2 = category_2.gifs.create(image_url: "https://media1.giphy.com/media/BlVnrxJgTGsUw/giphy.webp")
    category_3 = Category.create(name: 'dogs')
    gif_3 = category_3.gifs.create(image_url: "https://media1.giphy.com/media/JfDNFU1qOZna/giphy.webp")

    visit gifs_path

    expect(page).to have_content("Gif's")
  end
end
