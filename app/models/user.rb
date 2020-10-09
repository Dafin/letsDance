class User < ApplicationRecord

  # validates :email, :presence => true 
validates_presence_of :email, :forename

end

