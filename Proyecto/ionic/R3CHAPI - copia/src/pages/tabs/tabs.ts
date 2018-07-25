import { Component } from '@angular/core';

import {ListaNoticiasPage} from "../lista-noticias/lista-noticias";
import {PerfilPage} from "../perfil/perfil";
import {EtiquetasPage} from "../etiquetas/etiquetas";

@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  tab1Root = EtiquetasPage;
  tab2Root = ListaNoticiasPage;
  tab3Root = PerfilPage;

  constructor() {

  }
}
