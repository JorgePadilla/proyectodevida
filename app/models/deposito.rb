class Deposito < ActiveRecord::Base
  attr_accessible :fecha, :numero
  belongs_to :cuotum
end
