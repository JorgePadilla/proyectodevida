class ProductoPedido < ActiveRecord::Base
  attr_accessible :cantidad, :pedido_id, :precio, :producto_id
  belongs_to :producto
  belongs_to :pedido
end
