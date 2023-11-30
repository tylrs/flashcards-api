class ChangeFoldersToDeck < ActiveRecord::Migration[7.0]
  def change
    remove_reference :flashcards, :folder, foreign_key: true
    rename_table :folders, :decks
    add_reference :flashcards, :deck, foreign_key: true
  end
end
