class ProductoIngreso < ActiveRecord::Base
  attr_accessible :cantidad_ingreso, :documento_ingreso, :fecha_ingreso, :producto_id, :valor_producto
  belongs_to :producto
end
