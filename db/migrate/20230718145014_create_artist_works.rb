class CreateArtistWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :artist_works do |t|
      t.string :work_type
      t.string :work_title
      t.date :year
      t.string :ownership_status
      t.text :description

      t.timestamps
    end
  end
end
