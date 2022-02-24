class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.text :name
      t.integer :dob
      t.text :bio

      t.timestamps
    end
  end
end
