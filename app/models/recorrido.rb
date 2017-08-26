class Recorrido < ApplicationRecord
  has_many :vehiculos
  has_many :pasajeros,through: :vehiculos
  accepts_nested_attributes_for :vehiculos, reject_if: :all_blank, allow_destroy: true
end
