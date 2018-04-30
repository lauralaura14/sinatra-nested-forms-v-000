require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :new
    end

    post '/pirate' do
      @pirate = Pirate.new(params[:pirate])

      params[:student][:courses].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
        erb :pirate
    end

  end
end
