class AddFolderRefToFlashcards < ActiveRecord::Migration[7.0]
  def change
    add_reference :flashcards, :folder, foreign_key: true
  end
end
