require 'devise-safeguard/hooks/safeguard_authenticatable'
module Devise
  module Models
    module SafeguardAuthenticatable
      extend ActiveSupport::Concern

      def with_safeguard_authentication?(request)
        return true if self.safeguard_enabled
        false
      end

      module ClassMethods
        Devise::Models.config(self, :safeguard_remember_device)
      end
    end
  end
end

