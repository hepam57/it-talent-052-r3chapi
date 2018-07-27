class Administrador < ApplicationRecord
    has_many :etiquetas
    has_many :informativos
end
