Rails.application.routes.draw do
  get 'decks', to: 'decks#index'
  get 'decks/:deckId/flashcards', to: 'flashcards#index'
end
