module DeviseSafeguard
  class Engine < ::Rails::Engine
    ActiveSupport.on_load(:action_controller) do
      include DeviseSafeguard::Controllers::Helpers
    end
  end
end
