class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :director
      t.string :movie_length
      t.string :rating
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
