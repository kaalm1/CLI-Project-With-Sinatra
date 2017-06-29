class CreateGameTable < ActiveRecord::Migration[4.2]

  def change
    create_table :hangmen do |t|
      t.string  :given_word
      t.string  :players_word
      t.string  :letters_picked
      t.integer :total_errors
      t.integer :level
      t.string  :tree
      t.integer :user_id
    end
  end
end
