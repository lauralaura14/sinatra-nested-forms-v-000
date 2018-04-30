require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/new' do
      erb :'pirates/new'
    end

    post '/pirate' do
      @pirate = Pirate.new(params[:pirate])

      params[:student][:courses].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
        erb :'pirates/show'
    end

  end
end
