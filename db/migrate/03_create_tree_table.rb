class CreateTreeTable < ActiveRecord::Migration[4.2]

  def change
    create_table :trees do |t|
      t.string :main
      t.integer :hangman_id
    end
  end
end
