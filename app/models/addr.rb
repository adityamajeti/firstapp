class Addr < ActiveRecord::Base

  belongs_to :user
  
  validates :permenant_address, :current_address, presence: true
  
end
