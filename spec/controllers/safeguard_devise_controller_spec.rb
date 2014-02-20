require 'spec_helper'

describe Devise::DeviseSafeguardController do
  include Devise::TestHelpers

  before :each do
    request.env["devise.mapping"] = Devise.mappings[:user]
    @user = create_user()
  end

  describe "GET #verify_safeguard" do
    it "Should render the second step of authentication" do
      request.session["user_id"] = @user.id
      request.session["user_password_checked"] = true
      get :GET_verify_safeguard
      response.should render_template('verify_safeguard')
    end

    it "Should no render the second step of authentication if first step is incomplete" do
      request.session["user_id"] = @user.id
      get :GET_verify_safeguard
      response.should redirect_to(root_url)
    end

    it "should redirect to root_url" do
      get :GET_verify_safeguard
      response.should redirect_to(root_url)
    end
  end

  describe "POST #verify_safeguard" do
    it "Should login the user if token is ok" do
      request.session["user_id"] = @user.id
      request.session["user_password_checked"] = true

      post :POST_verify_safeguard, :token => '0000000'
      @user.reload
      @user.last_sign_in_with_safeguard.should_not be_nil

      response.cookies["remember_device"].should be_nil
      response.should redirect_to(root_url)
      flash.now[:notice].should_not be_nil
    end

#    it "Should set remember_device if selected" do
#      request.session["user_id"] = @user.id
#      request.session["user_password_checked"] = true

#      post :POST_verify_safeguard, :token => '0000000', :remember_device => '1'
#      @user.reload
#      @user.last_sign_in_with_safeguard.should_not be_nil

#      response.cookies["remember_device"].should_not be_nil
#      response.should redirect_to(root_url)
#      flash.now[:notice].should_not be_nil
#    end

    it "Shouldn't login the user if token is invalid" do
      request.session["user_id"] = @user.id
      request.session["user_password_checked"] = true
      Devise::DeviseSafeguardController.any_instance.stub(:token_ok?).and_return(false)
      post :POST_verify_safeguard, :token => '5678900'
      response.should render_template('verify_safeguard')
    end
  end
end
