class User < ActiveRecord::Base

  has_one :addr

   validates :name, :password, :gender, :qualification, :email,:mobino, presence: true
   validates :name, length: { maximum: 30 }
   validates :password, confirmation: true
   validates :password, length: 6..20
   validates :gender, inclusion: %w(male female)
   validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
   validates :mobino, length: { minimum:10, maximum: 12 }

   #after_save :send_email_to_user

   #def send_email_to_user
   #	t = User.first
   #	t.delete
  # end

end
