class DirectorComercial < ActiveRecord::Base
  attr_accessible :comision_credito, :gerente_comercial_id, :nombre
  belongs_to :gerente_comercial
  has_many :coordinadors
end
