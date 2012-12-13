class Pass < ActiveRecord::Base
  belongs_to :client
  belongs_to :fly
 
  attr_accessible :valor, :assento, :fly_id, :client_id
  validates :valor, :assento, :presence => true
  
  validates_presence_of :fly
  validates_presence_of :client
  
  validates :client_id, :uniqueness => { :scope => :fly_id }
end
