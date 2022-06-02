class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :display_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
