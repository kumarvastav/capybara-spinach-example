require 'capybara'
require 'selenium-webdriver'
require 'rspec/matchers'
require 'capybara/rspec/matchers'
require 'capybara/rspec'
require 'spinach/capybara'
require 'minitest/autorun'
require 'minitest/spec'
require 'uri'
require_relative '../../features/pages/homepage'
require_relative '../../features/pages/searchResults'


class Environment

  def enableFirefox()

    Capybara.register_driver :firefox do |app|
      Capybara::Selenium::Driver.new(app, :browser => :firefox)
    end

    Capybara.default_driver = :selenium

    # @USERS = YAML.load '../../features/support/user.yml'
    # printf(@USERS)

  end

  def enableChrome()

    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    Capybara.default_driver = :chrome

  end

  def enableSafari()

    Capybara.register_driver :safari do |app|
      Capybara::Selenium::Driver.new(app, :browser => :safari)
    end

    Capybara.default_driver = :safari

  end

  def enableHeadless()

    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => :selenium)
    end

    Capybara.javascript_driver = :webkit

  end

end

# Capybara.register_driver :safari do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :safari)
# end
#
# Capybara.default_driver = :safari

# Capybara.register_driver :firefox do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :firefox)
# end
#
# Capybara.default_driver = :selenium

# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end
#
# Capybara.default_driver = :chrome


#Tell FireFox to use proxy settings
# if ENV['http_proxy']
#   Capybara.register_driver :selenium do |app|
#     profile = Selenium::WebDriver::selenium::Profile.new
#
#     uri = URI(ENV['http_proxy'])
#
#     profile[".proxy.type"] = 1 # manual proxy config
#     profile["network.proxy.http"] = uri.host
#     profile["network.proxy.http_port"] = uri.port
#
#     if ENV['https_proxy']
#       uri = URI(ENV['https_proxy'])
#       profile["network.proxy.https"] = uri.host
#       profile["network.proxy.https_port"] = uri.port
#     end
#
#     Capybara::Selenium::Driver.new(app, :profile => profile)
#   end
# end
#
#  Capybara.default_driver = :selenium