class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.text :description
      t.string :api_id
      t.string :imdb_id

      t.timestamps
    end
  end
end
