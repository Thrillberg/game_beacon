require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "POST create" do
    before :each do
      @username = 'john'
      post :create, { :user => { username: @username, password: 'password', email: 'john@john.com' }, format: 'json' }
    end
    
    it "creates a user" do
      expect(User.find_by(username: @username).username).to eq(@username)
    end

    it "responds with 200" do
      expect(response.status).to eq(200)
    end

    it "response.body returns user" do
      parsed_username = JSON.parse(response.body)['username']
      expect(parsed_username).to eq(@username)
    end
  end
end
