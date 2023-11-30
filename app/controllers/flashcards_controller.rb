class FlashcardsController < ApplicationController
  def show_by_deck
    flashcards = Deck.find(params[:deckId]).flashcards

    render json: flashcards
  end
end
