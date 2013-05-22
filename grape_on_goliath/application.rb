require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

# Set environment
ENV['RACK_ENV'] ||= "development"
Bundler.require(:default, ENV['RACK_ENV'])

# Set project configuration
require File.expand_path("../config", __FILE__)

# Set autoload directory
%w{app}.each do |dir|
  Dir.glob(File.expand_path("../#{dir}", __FILE__) + '/**/*.rb').each do |file|
    require file
  end    
end
