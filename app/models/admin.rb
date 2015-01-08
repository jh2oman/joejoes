class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :pics
         has_attached_file :cover
         validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
end
