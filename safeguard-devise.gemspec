# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: safeguard-devise 0.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "safeguard-devise"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["diegonakamashi"]
  s.date = "2014-02-24"
  s.description = "Safeguard Devise module"
  s.email = "diegonakamashi@gmail.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".vagrant/machines/default/virtualbox/action_provision",
    ".vagrant/machines/default/virtualbox/action_set_name",
    ".vagrant/machines/default/virtualbox/id",
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "VERSION",
    "Vagrantfile",
    "app/assets/images/logo_safeguard.png",
    "app/assets/images/token.svg",
    "app/assets/stylesheets/devise_safeguard.css",
    "app/assets/stylesheets/devise_safeguard.sass",
    "app/controllers/devise/devise_safeguard_controller.rb",
    "app/views/devise/verify_safeguard.html.erb",
    "app/views/devise/verify_safeguard.html.haml",
    "config/locales/en.yml",
    "config/locales/pt-BR.yml",
    "lib/devise-safeguard/controllers/helpers.rb",
    "lib/devise-safeguard/hooks/safeguard_authenticatable.rb",
    "lib/devise-safeguard/models/safeguard_authenticatable.rb",
    "lib/devise-safeguard/rails.rb",
    "lib/devise-safeguard/routes.rb",
    "lib/generators/active_record/devise_safeguard_generator.rb",
    "lib/generators/active_record/templates/migration.rb",
    "lib/generators/devise_safeguard/devise_safeguard_generator.rb",
    "lib/generators/devise_safeguard/install_generator.rb",
    "lib/safeguard-devise.rb",
    "puppet/manifests/default.pp",
    "puppet/modules/elasticsearch/CHANGELOG",
    "puppet/modules/elasticsearch/CONTRIBUTORS",
    "puppet/modules/elasticsearch/LICENSE",
    "puppet/modules/elasticsearch/Modulefile",
    "puppet/modules/elasticsearch/README.md",
    "puppet/modules/elasticsearch/Rakefile",
    "puppet/modules/elasticsearch/manifests/config.pp",
    "puppet/modules/elasticsearch/manifests/init.pp",
    "puppet/modules/elasticsearch/manifests/java.pp",
    "puppet/modules/elasticsearch/manifests/package.pp",
    "puppet/modules/elasticsearch/manifests/params.pp",
    "puppet/modules/elasticsearch/manifests/plugin.pp",
    "puppet/modules/elasticsearch/manifests/python.pp",
    "puppet/modules/elasticsearch/manifests/service.pp",
    "puppet/modules/elasticsearch/manifests/template.pp",
    "puppet/modules/elasticsearch/metadata.json",
    "puppet/modules/elasticsearch/spec/classes/elasticsearch_init_spec.rb",
    "puppet/modules/elasticsearch/spec/defines/template_spec.rb",
    "puppet/modules/elasticsearch/spec/spec_helper.rb",
    "puppet/modules/elasticsearch/templates/etc/default/elasticsearch.erb",
    "puppet/modules/elasticsearch/templates/etc/elasticsearch/elasticsearch.yml.erb",
    "puppet/modules/memcached/.gitignore",
    "puppet/modules/memcached/Modulefile",
    "puppet/modules/memcached/README.md",
    "puppet/modules/memcached/manifests/init.pp",
    "puppet/modules/memcached/manifests/params.pp",
    "puppet/modules/memcached/templates/memcached.conf.erb",
    "puppet/modules/memcached/templates/memcached_sysconfig.erb",
    "puppet/modules/mysql/.fixtures.yml",
    "puppet/modules/mysql/.gemfile",
    "puppet/modules/mysql/LICENSE",
    "puppet/modules/mysql/Modulefile",
    "puppet/modules/mysql/README.md",
    "puppet/modules/mysql/files/mysqltuner.pl",
    "puppet/modules/mysql/lib/puppet/parser/functions/mysql_password.rb",
    "puppet/modules/mysql/lib/puppet/provider/database/mysql.rb",
    "puppet/modules/mysql/lib/puppet/provider/database_grant/mysql.rb",
    "puppet/modules/mysql/lib/puppet/provider/database_user/mysql.rb",
    "puppet/modules/mysql/lib/puppet/type/database.rb",
    "puppet/modules/mysql/lib/puppet/type/database_grant.rb",
    "puppet/modules/mysql/lib/puppet/type/database_user.rb",
    "puppet/modules/mysql/manifests/backup.pp",
    "puppet/modules/mysql/manifests/config.pp",
    "puppet/modules/mysql/manifests/db.pp",
    "puppet/modules/mysql/manifests/init.pp",
    "puppet/modules/mysql/manifests/java.pp",
    "puppet/modules/mysql/manifests/params.pp",
    "puppet/modules/mysql/manifests/python.pp",
    "puppet/modules/mysql/manifests/ruby.pp",
    "puppet/modules/mysql/manifests/server.pp",
    "puppet/modules/mysql/manifests/server/account_security.pp",
    "puppet/modules/mysql/manifests/server/monitor.pp",
    "puppet/modules/mysql/manifests/server/mysqltuner.pp",
    "puppet/modules/mysql/templates/my.cnf.erb",
    "puppet/modules/mysql/templates/my.cnf.pass.erb",
    "puppet/modules/mysql/templates/mysqlbackup.sh.erb",
    "puppet/modules/postgresql/GPL-3",
    "puppet/modules/postgresql/Modulefile",
    "puppet/modules/postgresql/README.md",
    "puppet/modules/postgresql/lib/puppet/provider/pg_database/debian_postgresql.rb",
    "puppet/modules/postgresql/lib/puppet/provider/pg_database/default.rb",
    "puppet/modules/postgresql/lib/puppet/provider/pg_user/debian_postgresql.rb",
    "puppet/modules/postgresql/lib/puppet/provider/pg_user/default.rb",
    "puppet/modules/postgresql/lib/puppet/type/pg_database.rb",
    "puppet/modules/postgresql/lib/puppet/type/pg_user.rb",
    "puppet/modules/postgresql/manifests/db.pp",
    "puppet/modules/postgresql/manifests/init.pp",
    "puppet/modules/postgresql/manifests/params.pp",
    "puppet/modules/postgresql/manifests/server.pp",
    "puppet/modules/postgresql/templates/pg_hba.conf.erb",
    "puppet/modules/postgresql/templates/postgresql.conf.erb",
    "puppet/modules/redis/CHANGELOG",
    "puppet/modules/redis/Gemfile",
    "puppet/modules/redis/Gemfile.lock",
    "puppet/modules/redis/Modulefile",
    "puppet/modules/redis/README.md",
    "puppet/modules/redis/Rakefile",
    "puppet/modules/redis/manifests/init.pp",
    "puppet/modules/redis/manifests/params.pp",
    "puppet/modules/redis/metadata.json",
    "puppet/modules/redis/spec/spec_helper.rb",
    "puppet/modules/redis/templates/redis.debian.conf.erb",
    "puppet/modules/redis/templates/redis.logrotate.erb",
    "puppet/modules/redis/templates/redis.rhel.conf.erb",
    "puppet/modules/redis/tests/init.pp",
    "puppet/upgrade-puppet.sh",
    "safeguard-devise.gemspec",
    "spec/controllers/safeguard_devise_controller_spec.rb",
    "spec/devise/safeguard_authenticatable_spec.rb",
    "spec/orm/active_record.rb",
    "spec/routing/routes_spec.rb",
    "spec/safeguard-devise-test-app/.gitignore",
    "spec/safeguard-devise-test-app/Gemfile",
    "spec/safeguard-devise-test-app/Gemfile.lock",
    "spec/safeguard-devise-test-app/README.rdoc",
    "spec/safeguard-devise-test-app/Rakefile",
    "spec/safeguard-devise-test-app/app/assets/images/.keep",
    "spec/safeguard-devise-test-app/app/assets/javascripts/application.js",
    "spec/safeguard-devise-test-app/app/assets/stylesheets/application.css",
    "spec/safeguard-devise-test-app/app/assets/stylesheets/devise_safeguard.css",
    "spec/safeguard-devise-test-app/app/controllers/application_controller.rb",
    "spec/safeguard-devise-test-app/app/controllers/concerns/.keep",
    "spec/safeguard-devise-test-app/app/controllers/home_controller.rb",
    "spec/safeguard-devise-test-app/app/helpers/application_helper.rb",
    "spec/safeguard-devise-test-app/app/mailers/.keep",
    "spec/safeguard-devise-test-app/app/models/.keep",
    "spec/safeguard-devise-test-app/app/models/concerns/.keep",
    "spec/safeguard-devise-test-app/app/models/user.rb",
    "spec/safeguard-devise-test-app/app/views/devise/devise_safeguard/verify_safeguard.html.erb",
    "spec/safeguard-devise-test-app/app/views/devise/devise_safeguard/verify_safeguard.html.haml",
    "spec/safeguard-devise-test-app/app/views/home/index.html.erb",
    "spec/safeguard-devise-test-app/app/views/layouts/application.html.erb",
    "spec/safeguard-devise-test-app/bin/bundle",
    "spec/safeguard-devise-test-app/bin/rails",
    "spec/safeguard-devise-test-app/bin/rake",
    "spec/safeguard-devise-test-app/config.ru",
    "spec/safeguard-devise-test-app/config/application.rb",
    "spec/safeguard-devise-test-app/config/boot.rb",
    "spec/safeguard-devise-test-app/config/database.yml",
    "spec/safeguard-devise-test-app/config/environment.rb",
    "spec/safeguard-devise-test-app/config/environments/development.rb",
    "spec/safeguard-devise-test-app/config/environments/production.rb",
    "spec/safeguard-devise-test-app/config/environments/test.rb",
    "spec/safeguard-devise-test-app/config/initializers/backtrace_silencers.rb",
    "spec/safeguard-devise-test-app/config/initializers/devise.rb",
    "spec/safeguard-devise-test-app/config/initializers/filter_parameter_logging.rb",
    "spec/safeguard-devise-test-app/config/initializers/inflections.rb",
    "spec/safeguard-devise-test-app/config/initializers/mime_types.rb",
    "spec/safeguard-devise-test-app/config/initializers/secret_token.rb",
    "spec/safeguard-devise-test-app/config/initializers/session_store.rb",
    "spec/safeguard-devise-test-app/config/initializers/wrap_parameters.rb",
    "spec/safeguard-devise-test-app/config/locales/devise.en.yml",
    "spec/safeguard-devise-test-app/config/locales/devise.safeguard.en.yml",
    "spec/safeguard-devise-test-app/config/locales/devise.safeguard.pt-BR.yml",
    "spec/safeguard-devise-test-app/config/locales/en.yml",
    "spec/safeguard-devise-test-app/config/routes.rb",
    "spec/safeguard-devise-test-app/db/migrate/20140220191103_create_users.rb",
    "spec/safeguard-devise-test-app/db/migrate/20140220191247_add_devise_to_users.rb",
    "spec/safeguard-devise-test-app/db/migrate/20140220191522_devise_safeguard_add_to_users.rb",
    "spec/safeguard-devise-test-app/db/schema.rb",
    "spec/safeguard-devise-test-app/db/seeds.rb",
    "spec/safeguard-devise-test-app/lib/assets/.keep",
    "spec/safeguard-devise-test-app/lib/tasks/.keep",
    "spec/safeguard-devise-test-app/log/.keep",
    "spec/safeguard-devise-test-app/public/404.html",
    "spec/safeguard-devise-test-app/public/422.html",
    "spec/safeguard-devise-test-app/public/500.html",
    "spec/safeguard-devise-test-app/public/favicon.ico",
    "spec/safeguard-devise-test-app/public/robots.txt",
    "spec/safeguard-devise-test-app/test/controllers/.keep",
    "spec/safeguard-devise-test-app/test/fixtures/.keep",
    "spec/safeguard-devise-test-app/test/fixtures/users.yml",
    "spec/safeguard-devise-test-app/test/helpers/.keep",
    "spec/safeguard-devise-test-app/test/integration/.keep",
    "spec/safeguard-devise-test-app/test/mailers/.keep",
    "spec/safeguard-devise-test-app/test/models/.keep",
    "spec/safeguard-devise-test-app/test/models/user_test.rb",
    "spec/safeguard-devise-test-app/test/test_helper.rb",
    "spec/safeguard-devise-test-app/vendor/assets/javascripts/.keep",
    "spec/safeguard-devise-test-app/vendor/assets/stylesheets/.keep",
    "spec/spec_helper.rb",
    "spec/tests_helper/helpers.rb"
  ]
  s.homepage = "http://github.com/diegonakamashi/safeguard-devise"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Safeguard devise module"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<devise>, [">= 0"])
      s.add_runtime_dependency(%q<safeguard-api>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<sass-rails>, [">= 0"])
      s.add_development_dependency(%q<jquery-rails>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
    else
      s.add_dependency(%q<devise>, [">= 0"])
      s.add_dependency(%q<safeguard-api>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
    end
  else
    s.add_dependency(%q<devise>, [">= 0"])
    s.add_dependency(%q<safeguard-api>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
  end
end

