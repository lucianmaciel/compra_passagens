class Fly < ActiveRecord::Base
  attr_accessible :airplane_id, :codigo, :data, :destino, :hora_chegada, :hora_voo, :origem, :pilot_id

 validates :data, :codigo, :hora_chegada, :hora_voo, :origem, :destino, :presence => true
  
  belongs_to :airplane
  belongs_to :pilot
  has_many :passes
  has_many :clients, :through => :passes

  validates_presence_of :airplane
  validates_presence_of :pilot
  validates :codigo, :uniqueness => true

end
