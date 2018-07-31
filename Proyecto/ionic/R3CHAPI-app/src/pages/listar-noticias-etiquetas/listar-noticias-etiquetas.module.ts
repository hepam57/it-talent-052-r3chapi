import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { ListarNoticiasEtiquetasPage } from './listar-noticias-etiquetas';

@NgModule({
  declarations: [
    ListarNoticiasEtiquetasPage,
  ],
  imports: [
    IonicPageModule.forChild(ListarNoticiasEtiquetasPage),
  ],
})
export class ListarNoticiasEtiquetasPageModule {}
