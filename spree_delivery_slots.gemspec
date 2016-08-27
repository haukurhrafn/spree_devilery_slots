$:.push File.expand_path("../lib", __FILE__)

require 'spree_delivery_slots/version'

Gem::Specification.new do |s|
  s.version     = SpreeDeliverySlots::VERSION
  s.platform    = Gem::Platform::RUBY

  s.name        = 'spree_delivery_slots'
  s.summary     = 'Adds delivery slots functionality'
  s.description = 'You can manage your delivery slots in admin, specify cut-off hours for every slot, create exceptional dates'

  s.homepage    = "https://github.com/AntonZh/spree_delivery_slots"

  s.required_ruby_version = '>= 2.0.0'

  s.license = 'MIT'

  s.author    = ['Anton Zhavoronkov']
  s.email     = ['anton.zhavoronkov@gmail.com']

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency 'spree_core', '~> 3.0'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'timecop'
end
