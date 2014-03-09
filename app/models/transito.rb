class Transito < ActiveRecord::Base
  attr_accessible :asesor_id, :cantidad, :inventario_id
  belongs_to :asesor
  belongs_to :inventario
	has_many :nota_entrega
	has_many :nota_devolucion

	def nombre
		return asesor.nombre + "-" + inventario.nombre# + " (" + cantidad.to_s + ")"
	end
end
