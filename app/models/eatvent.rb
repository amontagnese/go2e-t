class Eatvent < ActiveRecord::Base
  has_many :users
  has_many :places
  

  attr_accessible :id, :creator, :people, :where, :day, :hour

  validates :creator, :presence => true
   
  validates :where, :presence => true
  
  validates :day, :presence => true
  
  validates :hour, :presence => true
                  

end
