class Pasajero < ApplicationRecord
  has_many :vehiculos
  has_many :recorridos, through: :vehiculos
  accepts_nested_attributes_for :vehiculos, reject_if: :all_blank, allow_destroy: true

end
