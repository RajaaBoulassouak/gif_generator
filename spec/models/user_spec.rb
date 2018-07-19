require 'rails_helper'

describe User, type: :model do
  describe "validations" do
    it {should validate_presence_of(:first_name)}
    it {should validate_presence_of(:last_name)}
    it {should validate_uniqueness_of(:email)}
    it {should validate_presence_of(:password)}
    it {should validate_presence_of(:role)}
  end
  describe 'relationships' do
    it {should have_many(:favorites)}
    it {should have_many(:gifs), through:(:favorites)}
  end
  describe "roles" do
    it 'can be created as an admin' do
      user = User.create(first_name: "Kobe", last_name: "Bryant", email: "BlackMamba@gmail.com", password: "shaq", role: 1)

      expect(user.role).to eq('admin')
      expect(user.admin?).to be_truthy
    end
    it 'can be created as a deault user' do
      user = User.create(first_name: "Lonzo", last_name: "Ball", email: "BBB.@aol.com", password: "LaMello", role: 0)

      expect(user.role).to eq('default')
      expect(user.default?).to be_truthy
    end
  end
end
