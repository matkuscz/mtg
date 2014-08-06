class PlayersController < ApplicationController
  def index
    @player = Player.all()
  end

  def new
    @player = Player.new()
  end

  def create
    @player = Player.create(name: params[:player][:name], email: params[:player][:email])

    unless @player.errors.empty?
      flash[:error] = 'Chyba'
    end
    #@player[:name] = params[:name]
    #@player[:email] = params[:email]
    #@player.save

    if @player.save
      redirect_to :action => 'index'
      #else
      #  render action: new
    end
  end
end
