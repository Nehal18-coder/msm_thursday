class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.text :title
      t.integer :year
      t.text :description
      t.integer :duration
      t.integer :director_id

      t.timestamps
    end
  end
end
