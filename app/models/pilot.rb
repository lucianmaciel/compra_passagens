class Pilot < ActiveRecord::Base
  attr_accessible :endereco, :nome, :telefone
  
  validates :nome, :endereco, :telefone, :presence => true
  
  validates :nome, :length => { :minimum => 5}
  validates :telefone, :format => { :with => /\([0-9]{2}\)[0-9]{8}/ }
  validates :nome, :uniqueness => true
  
  has_many :flies
end
