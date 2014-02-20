module DeviseSafeguard
  module Generators
    class DeviseSafeguardGenerator < Rails::Generators::NamedBase

      namespace "devise_safeguard"

      desc "Add :safeguard_authenticatable directive in the given model, plus accessors. Also generate migration for ActiveRecord"

      def inject_devise_safeguard_content
        path = File.join("app","models","#{file_path}.rb")
        if File.exists?(path) &&
          !File.read(path).include?("safeguard_authenticatable")
          inject_into_file(path,
                           "safeguard_authenticatable, :",
                           :after => "devise :")
        end

        if File.exists?(path) &&
          !File.read(path).include?(":last_sign_in_with_safeguard")
          inject_into_file(path,
                           ":last_sign_in_with_safeguard, ",
                           :after => "attr_accessible ") 
        end
      end

      hook_for :orm

    end
  end
end
