module DeviseSafeguard
  module Generators
    # Install Generator
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      class_option :haml, :type => :boolean, :required => false, :default => false, :desc => "Generate views in Haml"
      class_option :sass, :type => :boolean, :required => false, :default => false, :desc => "Generate stylesheet in Sass"

      desc "Install the devise safeguard extension"

      def add_configs
        inject_into_file "config/initializers/devise.rb", "\n" +
        "  # ==> Devise Authy Authentication Extension\n" +
        "  # How long should the user's device be remembered for.\n" +
        "  # config.safeguard_remember_device = 1.month\n\n", :before => /^end[\r\n]*$/
      end

      def copy_locale
        copy_file "../../../config/locales/pt-BR.yml", "config/locales/devise.safeguard.pt-BR.yml"
      end

      def copy_views
        if options.haml?
          copy_file '../../../app/views/devise/verify_safeguard.html.haml', 'app/views/devise/devise_safeguard/verify_safeguard.html.haml'
        else
          copy_file '../../../app/views/devise/verify_safeguard.html.erb', 'app/views/devise/devise_safeguard/verify_safeguard.html.erb'
        end
      end

      def copy_assets
      end

      def inject_assets_in_layout
      end
    end
  end
end
