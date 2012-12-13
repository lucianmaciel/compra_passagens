class Airplane < ActiveRecord::Base
  attr_accessible :capacidade, :modelo, :identificacao
  
    validates :modelo, :capacidade, :presence => true
    validates :modelo, :uniqueness => true
    has_many :flies
end
