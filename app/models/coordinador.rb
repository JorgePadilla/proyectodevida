class Coordinador < ActiveRecord::Base
  attr_accessible :comision_credito, :director_comercial_id, :nombre
  belongs_to :director_comercial
  has_many :moderadors
end
