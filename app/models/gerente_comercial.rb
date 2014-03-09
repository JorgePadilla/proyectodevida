class GerenteComercial < ActiveRecord::Base
  attr_accessible :comision_credito, :nombre
  has_many :director_comercials
end
