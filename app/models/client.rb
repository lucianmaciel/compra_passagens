class Client < ActiveRecord::Base
  attr_accessible :cidade, :email, :endereco, :nome, :rg, :telefone
  validates :nome, :rg, :endereco, :cidade, :telefone, :presence => true
  validates :rg, :uniqueness => true
  
  validates :email, :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
  validates :rg, :format => { :with => /[0-9]{10}/ }
  validates :telefone, :format => { :with => /\([0-9]{2}\)[0-9]{8}/ }
  validates :nome, :length => { :minimum => 5}
  
  has_many :passes
  has_many :flies, :through => :passes
end
