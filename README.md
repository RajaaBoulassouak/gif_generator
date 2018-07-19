### Project Option 2: GifGenerator

Create an app where users can "favorite" gifs. Host your app live on Heroku.

#### Gifs

- [ ] Admins can generate gifs by entering a one-word search term in field and then clicking "generate gif". This should create a new gif in the database. This feature is not available to regular users.
  - Gifs should have an image_path. See above "Images" in project #1 for more info on implementing images.
  - Use the [GiphyApi](https://github.com/giphy/GiphyAPI) to generate gifs.

#### Favoriting

- [x] Regular users can mark a gif as "favorite".
- [x] Regular users can see a list of all of the gifs they've marked as favorites.
- [x] Regular users cannot delete a gif; they can only "unfavorite" it for themselves.
- [ ] Regular users should be able to see all gifs sorted by category.
- [ ] Regular users should be able to see favorited gifs sorted by category.

#### Categories

- [x] Gifs belong to a category (category is the original word that was searched for by the admin).
- [ ] categories can be created by a logged-in admin user (regular logged in users cannot create categories).
- [ ] categories can be destroyed by a logged-in admin user (regular logged in users cannot destroy categories).

#### Authentication and Authorization

- [x] Users need to log in to see their favorited gifs.
- [x] Users can only see their own favorited gifs -- they should not be able to visit another user's page.
- [x] Users cannot create favorites for other users.
- [x] Users cannot create new categories -- only the admin can do that.
- [x] Users cannot create gifs -- only the admin can do that.
- [x] Visitors (non-registered users) can create user accounts.

#### User Experience

- [ ] The application has been styled.
- [ ] The application uses a balanced, considered color scheme.
- [ ] The application implements a font (that is not the default font).
- [x] The application utilizes a nav bar.
- [ ] The style shows evidence of intentional layout.
- [ ] Space and text is balanced. White space is used to visually separate content.
- [x] The application is easily usable. The user can intuitvely navigate between different portions of the application without manually entering the URL into the nav-bar or using the back button on their browser.

#### Database

- [x] Properly implements a one-to-many relationship
- [x] Properly implements a many-to-many relationship
- [x] Utilizes primary and foreign keys appropriately

### Code Quality

- [x] Logic lives in the appropriate files
- [x] Methods are refactored and follow SRP
- [x] Naming follows convention

#### Testing

- [x] Project has a running test suite
- [x] Test suite includes robust feature tests
- [x] Test suite includes tests for validations
- [x] Test suite includes tests for methods that they have created on the models

#### Optional Extensions

- Implement Twitter, Github, or Facebook OAuth login
- Use HAML for your views
- TDD using RSpec instead of Test::Unit
