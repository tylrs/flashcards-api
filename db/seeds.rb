# Clear existing data
Deck.destroy_all
Flashcard.destroy_all

# Create decks
decks = Deck.create([
  { 
    id: 1,
    name: 'Mathematics' 
  },
  { 
    id: 2,
    name: 'Science' 
  },
  { 
    id: 3,
    name: 'Languages'
   }
])

# Create flashcards
flashcards = Flashcard.create([
  { deck_id: decks[0][:id], front: '2 + 2', back: '4' },
  { deck_id: decks[0][:id], front: '5 * 5', back: '25' },
  { deck_id: decks[1][:id], front: 'Chemical symbol for water', back: 'H2O' },
  { deck_id: decks[1][:id], front: 'Newton\'s First Law', back: 'An object at rest stays at rest and an object in motion stays in motion with the same speed and in the same direction unless acted upon by an unbalanced external force.' },
  { deck_id: decks[2][:id], front: "Spanish for 'Hello'", back: 'Hola' },
  { deck_id: decks[2][:id], front: "French for 'Goodbye'", back: 'Au revoir' }
])

puts 'Seed data has been created!'