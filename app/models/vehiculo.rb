class Vehiculo < ApplicationRecord
  belongs_to :recorrido
  belongs_to :pasajero
  accepts_nested_attributes_for :pasajero, reject_if: :all_blank, allow_destroy: true
end
