class Usuario < ApplicationRecord
    has_many :usuarios_etiquetas
    has_many :etiquetas, through: :usuarios_etiquetas
end
