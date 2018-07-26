class Informativo < ApplicationRecord
    has_many :informativos_etiquetas
    has_many :etiquetas, through: :informativos_etiquetas
end
