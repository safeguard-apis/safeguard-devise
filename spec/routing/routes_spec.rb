require 'spec_helper'

describe "routes for devise_safeguard" do
  it "route to devise_safeguard#GET_verify_safeguard" do
    get('/users/verify_safeguard').should route_to("devise/devise_safeguard#GET_verify_safeguard")
  end

  it "routes to devise_safeguard#POST_verify_safeguard" do
    post('/users/verify_safeguard').should route_to("devise/devise_safeguard#POST_verify_safeguard")
  end


end
