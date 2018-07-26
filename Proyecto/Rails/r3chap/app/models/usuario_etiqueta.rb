class UsuarioEtiqueta < ApplicationRecord
    belongs_to :usuarios
    belongs_to :etiquetas
end
