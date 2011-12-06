class User < ActiveRecord::Base
  belongs_to :eatvent
  
  attr_accessible :id, :name, :email, :login

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true, 
                   :length => {:maximum => 50}
  validates :email, :presence => true,
                    :format   => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
                    
  validates :login, :presence => true, 
                   :length => {:maximum => 50},
                   :uniqueness => { :case_sensitive => false }
                    
end
