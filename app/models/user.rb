class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates_presence_of :password, :first_name,:last_name, :user_name, :mobile_number
  validates_uniqueness_of :first_name,:last_name,:user_name,:mobile_number
  validates_length_of :mobile_number, is: 10

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  belongs_to :role
  has_many :rooms


  after_create :default_role
        
 def role?(role)
self.role.name == role
 end

 
private
 def default_role
   role = Role.last
   self.role_id = role.id
   self.save
 end

 
end
