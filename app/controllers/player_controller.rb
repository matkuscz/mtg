class PlayerController < ApplicationController
  def list
    #@players = Player.all()
    puts "tohle bude asi DEPRECATED :) "
  end

  def index
    @players = Player.all()
  end

  def show
    @player = Player.find(params[:id])
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

  def edit
    @player = Player.find(params[:id])

  end

  def update
  end

  def delete
  end
end
