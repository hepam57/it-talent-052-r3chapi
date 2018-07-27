# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
 ActiveSupport::Inflector.inflections(:en) do |inflect|
    inflect.irregular 'administrador', 'administradores'
    inflect.irregular 'Administrador', 'Administradores'
    inflect.irregular 'editor', 'editores'
    inflect.irregular 'Editor', 'Editores'
    inflect.irregular 'usuario', 'usuarios'
    inflect.irregular 'Usuario', 'Usuarios'
    inflect.irregular 'informativo', 'informativos'
    inflect.irregular 'Informativo', 'Informativos'
    inflect.irregular 'comentario', 'comentarios'
    inflect.irregular 'Comentario', 'Comentarios'
    inflect.irregular 'etiqueta', 'etiquetas'
    inflect.irregular 'Etiqueta', 'Etiquetas'
    inflect.irregular 'usuario_etiqueta', 'usuarios_etiquetas'
    inflect.irregular 'Usuario_etiqueta', 'Usuarios_etiquetas'
    inflect.irregular 'informativo_etiqueta', 'informativos_etiquetas'
    inflect.irregular 'Informativo_etiqueta', 'Informativos_etiquetas'
 end
  