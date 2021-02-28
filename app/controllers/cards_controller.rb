class CardsController < ApplicationController
  def new
    @deck = Deck.find(params[:deck_id])
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @deck = Deck.find(params[:deck_id])
    @card.deck = @deck
    if @card.save
      redirect_to deck_path(@deck)
    else
      render :new
    end
  end

  private

  def card_params
    params.require(:cards).permit(:front_side, :back_side)
  end
end
