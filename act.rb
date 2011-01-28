require 'rubygems'
require 'bundler'
Bundler.require

require 'sinatra'
require 'sinatra/r18n'
require 'haml'

set :haml, :format => :html5
set :default_locale, 'en'

get '/' do
  haml :index
end

get '/:locale' do
  haml :index
end
