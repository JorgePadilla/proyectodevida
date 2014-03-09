class Rol < ActiveRecord::Base
  has_many :usuarios
  attr_accessible :nombre
end
