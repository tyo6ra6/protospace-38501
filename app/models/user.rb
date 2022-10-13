class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         has_many :prototypes
         has_many :comments


        
         validates :profile, presence: true
         validates :occupation, presence: true
         validates :position, presence: true
         validates :name, presence: true



end

