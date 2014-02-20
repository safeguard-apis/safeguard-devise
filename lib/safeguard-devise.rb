require 'active_support/concern'
require 'active_support/core_ext/integer/time'
require 'devise'

module Devise

end

module DeviseSafeguard
  module Controllers
    autoload :Helpers, 'devise-safeguard/controllers/helpers'
  end

  module Views

  end
end

require 'devise-safeguard/routes'
require 'devise-safeguard/rails'
require 'devise-safeguard/models/safeguard_authenticatable'
Devise::Models.config(self, :safeguard_remember_device)

Devise.add_module :safeguard_authenticatable, :model => 'devise-safeguard/models/safeguard_authenticatable', :controller => :devise_safeguard, :route => :safeguard
