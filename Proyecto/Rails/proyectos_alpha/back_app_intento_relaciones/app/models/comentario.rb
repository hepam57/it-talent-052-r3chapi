class Comentario < ApplicationRecord
    has_many :informativos
    has_many :usuarios
end
