class CreateRelationBetweenInformativosEtiquetas < ActiveRecord::Migration[5.2]
  
def change
  change_table  :informativos_etiquetas do |t|
    t.belongs_to :informativos
    t.belongs_to :etiquetas
  end
end

def change
  change_table  :informativos do |t|
    t.belongs_to :etiquetas
  end
end

def change
  change_table  :etiquetas do |t|
    t.belongs_to :informativos
  end
end

end

