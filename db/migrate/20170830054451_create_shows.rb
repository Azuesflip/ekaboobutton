class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :city
      t.string :state
      t.string :venue
      t.date :date
      t.string :tickets

      t.timestamps
    end
  end
end
