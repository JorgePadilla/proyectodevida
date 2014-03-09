class NotaEntrega < ActiveRecord::Base
  attr_accessible :cantidad, :fecha, :numero, :transito_id
	belongs_to :transito
end
