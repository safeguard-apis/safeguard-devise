require 'spec_helper'

describe "Safeguard Authenticatable", :type => :request do
  describe "If user don't have two factor authentication should login with email - password" do
    before :each do
      @user = create_user(:email => 'foo@bar.com')
    end

    it "Sign in should succeed" do
      fill_sign_in_form('foo@bar.com', '12345678')
      current_path.should == root_path
    end

    it "Sign in shouldn't success" do
      fill_sign_in_form('foo@bar.com', '14567823')
      current_path.should == new_user_session_path
    end
  end

  describe "If user have two factor authentication" do
    before :each do
      @user = create_user()
      @user.update_attribute(:safeguard_enabled, true)
    end

    it "Sign in should succeed" do
      visit new_user_session_path
      fill_sign_in_form(@user.email, '12345678')
      current_path.should == user_verify_safeguard_path
      #page.should have_content('safeguard-devise-form')

      Devise::DeviseSafeguardController.any_instance.stub(:token_ok?).and_return(true)
      within('#devise_safeguard') do
        fill_in 'safeguard-token', :with => '0000000'
      end
      click_on I18n.t('safeguard_token_button', {:scope => 'devise'})
      current_path.should == root_path
      #page.should have_content(I18n.t('devise.devise_safeguard.user.signed_in'))
      @user.reload
      @user.last_sign_in_with_safeguard.should_not be_nil
    end

    it "Sign in shouldn't succeed" do
      visit new_user_session_path
      fill_sign_in_form(@user.email, '12345678')
      current_path.should == user_verify_safeguard_path
      #page.should have_content('safeguard-devise-form')

      within('#devise_safeguard') do
        fill_in 'safeguard-token', :with => '324567'
      end
      Devise::DeviseSafeguardController.any_instance.stub(:token_ok?).and_return(false)
      click_on I18n.t('safeguard_token_button', {:scope => 'devise'})
      current_path.should == user_verify_safeguard_path
      @user.reload
      @user.last_sign_in_with_safeguard.should be_nil
    end



    it "With cookie['current_user_id'] and cookie['user_password_checked']" do
      page.driver.browser.set_cookie("current_user_id=#{@user.id}")
      page.driver.browser.set_cookie('user_password_checked=true')

      visit user_verify_safeguard_path
      current_path.should == new_user_session_path
      page.should have_content('Sign in')
    end

  end
end
