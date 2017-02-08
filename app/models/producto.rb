class Producto < ApplicationRecord
	has_many :producto_adjuntos
	accepts_nested_attributes_for :producto_adjuntos
end
