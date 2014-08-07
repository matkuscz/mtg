class DecksController < ApplicationController
  def create
    @player = Player.find(params[:player_id])
    @deck = @player.decks.create(deck_params)
    if @deck.save
      redirect_to player_decks_path
    else
      render 'new'
    end
    #redirect_to player_deck_path(@deck)
  end

  def index
    @player = Player.find(params[:player_id])
    @decks = @player.decks.all
  end

  def edit
  end

  def show
  end

  def new
    @player = Player.find(params[:player_id])
    @deck = @player.decks.new()
  end

  private
  def deck_params
    params.require(:deck).permit(:name, :player_id)
  end
end
