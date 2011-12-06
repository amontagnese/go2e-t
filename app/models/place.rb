class Place < ActiveRecord::Base
  belongs_to :eatvent
  
  attr_accessible :name, :address, :tel, :price, :day, :hours, :website, :menu

  validates :name, :presence => true, 
                   :length => {:maximum => 50},
                   :uniqueness => { :case_sensitive => false }
  validates :address, :presence => true,
                    :uniqueness => { :case_sensitive => false }
                    
end
