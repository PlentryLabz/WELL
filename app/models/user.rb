class User
  include MongoMapper::Document
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  key :name, String
  key :email, String, required: true

  key :password, String
  key :password_confirmation, String
  key :encrypted_password, String, required: true

  key :remember_me, String
  key :reset_password_token, String
  key :reset_password_sent_at, Time
  key :remember_created_at, Time

  key :sign_in_count, Integer, default: 0, required: true
  key :current_sign_in_at, Time
  key :current_sign_in_ip, String
  key :last_sign_in_at, Time
  key :last_sign_in_ip, String
  timestamps!

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  many :lists

end