class Pilot < ActiveRecord::Base
  attr_accessible :endereco, :nome, :telefone
  
  validates :nome, :endereco, :telefone, :presence => true
  
  validates :nome, :length => { :minimum => 5}
  
  has_many :flies
end
