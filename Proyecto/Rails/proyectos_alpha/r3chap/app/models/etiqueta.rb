class Etiqueta < ApplicationRecord
    has_many :informativos_etiquetas
    has_many :informativos, through: :informativos_etiquetas
    has_many :usuarios_etiquetas
    has_many :usuarios, through: :usuarios_etiquetas
end
