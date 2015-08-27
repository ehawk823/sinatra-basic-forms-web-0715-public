class App < Sinatra::Base
  set :views, Proc.new { File.join(root, '../views')}

  get '/' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :'songs/show'
  end

  get '/songs/:id/edit' do
    @song = Song.find(params[:id])
    erb :'songs/edit'
  end

  # post '/songs/:id' do
  #   @song = Song.find(params[:id])
  #   erb :'songs/show'
  # end

  patch '/songs/:id' do
  # Find item
  song = Song.find(params[:id])
  song.update(params[:song])
  # song.update(params[:title])
  # song.update(params[:artist])
  # song.update(params[:album])
  # song.update(params[:genre])
  # song.update(params[:length])
  # Update item
  redirect "/songs/#{songs.id}"
  # Redirect to item
  end

end
