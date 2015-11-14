require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'


class App < Sinatra::Base
  set :root, File.dirname(__FILE__)

  register Sinatra::AssetPack

  assets do
    css :application, [
      "/css/normalize.css",
      "/css/skeleton.css",
      "/css/main.css"
     ]
     css_compression :sass
  end

  # Homepage.
  get '/' do
    haml :home
  end

  run! if app_file == $0
end
