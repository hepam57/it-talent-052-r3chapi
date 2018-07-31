import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { EtiquetasPage } from './etiquetas';

@NgModule({
  declarations: [
    EtiquetasPage,
  ],
  imports: [
    IonicPageModule.forChild(EtiquetasPage),
  ],
})
export class EtiquetasPageModule {}
