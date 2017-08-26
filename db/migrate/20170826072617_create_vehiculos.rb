class CreateVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :vehiculos do |t|
      t.string :modelo
      t.references :recorrido, foreign_key: true
      t.references :pasajero, foreign_key: true

      t.timestamps
    end
  end
end
