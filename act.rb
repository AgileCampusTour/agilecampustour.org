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

def determine_default_locale
  (r18n.locales & r18n.available_locales).first || r18n.default
end

before '/:locale/*' do |locale_code, remaining_path|
  if r18n.available_locales.map(&:code).include?(locale_code)
    r18n.locale = locale_code
    @locale = locale_code
  else
    redirect "/#{determine_default_locale.code}/#{remaining_path}"
  end
end

get '/' do
  redirect "/#{determine_default_locale.code}/news"
end

get '/:locale/:page' do |locale, page|
  @page = page
  haml :"#{page}.#{params[:locale]}"
end
