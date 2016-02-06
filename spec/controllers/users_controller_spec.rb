require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "POST create" do
    it "creates a user" do
      username = 'john'
      post :create, { :user => { username: username, password: 'password', email: 'john@john.com' }, format: 'json'}
      expect(User.find_by(username: username).username).to eq(username)
    end
  end
end
