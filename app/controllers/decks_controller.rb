class DecksController < ApplicationController
  before_action :authenticate_user!, :set_deck, only: [:show]

  def show
    @card = Card.new
  end

  def new
    @user = current_user
    @deck = Deck.new
    authorize @deck
  end

  def create
    @deck = Deck.new(deck_params)
    @user = current_user
    @deck.user = @user
    authorize @deck

    if @deck.save
      redirect_to deck_path(@deck)
    else
      render :new
    end
  end

  private

  def set_deck
    @deck = Deck.find(params[:id])
    authorize @deck
  end

  def deck_params
    params.require(:deck).permit(:title, :category)
  end
end
