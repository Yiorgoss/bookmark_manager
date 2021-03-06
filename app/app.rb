require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base

  ENV['RACK_ENV'] ||= 'development'
  # set :environment, :development

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb (:links)
  end

  get '/links/new' do
    erb (:new_link)
  end

  post '/links' do
    link = Link.new(:title => params[:title], :url => params[:url])
    tag = Tag.create(:name => params[:tag])
    link.tags << tag
    link.save
    redirect '/links'
  end

  run! if app_file == $0
end
