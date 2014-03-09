class Moderador < ActiveRecord::Base
  attr_accessible :comision_credito, :coordinador_id, :nombre
  belongs_to :coordinador
  has_many :asesors
end
