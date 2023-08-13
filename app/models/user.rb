class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   enum role: { artist: 0, standard: 1, admin: 2, superadmin: 3 }
   has_many :artist_works,
   class_name: 'ArtistWork',
   foreign_key: 'user_id',
   inverse_of: :user,
   dependent: :destroy
  
end
