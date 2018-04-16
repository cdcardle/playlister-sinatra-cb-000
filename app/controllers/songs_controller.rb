class SongsController < ApplicationController

  get '/songs' do
    erb :'/songs/index'
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :'/songs/show'
  end

  get '/songs/new' do
    erb :'/songs/new'
  end

  get '/songs/:slug/edit' do
    @song = Song.find_by_slug(params[:slug])
  end
end
