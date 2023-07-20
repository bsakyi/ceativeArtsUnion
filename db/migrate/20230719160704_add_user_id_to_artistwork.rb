class AddUserIdToArtistwork < ActiveRecord::Migration[7.0]
  def change
    add_column :artist_works, :user_id, :integer
  end
end
