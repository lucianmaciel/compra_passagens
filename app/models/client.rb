class Client < ActiveRecord::Base
  attr_accessible :cidade, :email, :endereco, :nome, :rg, :telefone
  validates :nome, :rg, :endereco, :cidade, :telefone, :presence => true
  validates :rg, :uniqueness => true
  
  validates :nome, :length => { :minimum => 5}
  
  has_many :passes
  has_many :flies, :through => :passes
end
