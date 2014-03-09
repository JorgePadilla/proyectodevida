class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.integer :asesor_id
      t.string :codificador
      t.string :evento
      t.string :ciudad
      t.date :fecha_pedido
      t.string :nombre_cliente
      t.string :identidad_cliente
      t.string :telefono_cliente
      t.string :celular_cliente
      t.string :correo_electronico
      t.string :direccion_cliente
      t.string :ciudad_cliente
      t.string :departamento_cliente
      t.string :trabajo_cliente
      t.string :cargo_cliente
      t.string :telefono_trabajo
      t.time :inicio_hora_contacto
      t.time :fin_hora_contacto
      t.string :conyugue
      t.string :referencia
      t.string :telefono_referencia
      t.string :alumno
      t.string :grado
      t.string :jornada
      t.float :valor_credito
      t.float :abono_inicial
      t.integer :numero_cuotas
      t.float :valor_cuota
      t.date :fecha_inicio_pago
      t.date :fecha_fin_pago

      t.timestamps
    end
  end
end
