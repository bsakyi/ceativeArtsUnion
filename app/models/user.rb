class User < ApplicationRecord
   has_many :artist_works,
   class_name: 'ArtistWork',
   foreign_key: 'user_id',
   inverse_of: :user,
   dependent: :destroy
  
end
