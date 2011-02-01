# -*- coding: utf-8 -*-
require 'rubygems'
require 'bundler'
Bundler.require

require 'sinatra'
require 'sinatra/r18n'
require 'haml'

set :haml, :format => :html5
set :default_locale, 'en'

if ENV['RACK_ENV'] == 'staging'
  use Rack::Auth::Basic, "Agile Campus Tour staging server" do |username, password|
    require 'digest/md5'
    Digest::MD5.hexdigest("#{username}:#{password}") == "8977a908d090515c63b041f06e3a960e"
  end
end

get '/' do
  haml :"index.#{r18n.locale.code}"
end

get '/:locale' do
  haml :"index.#{params[:locale]}"
end
