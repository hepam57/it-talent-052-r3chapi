import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';

import { TabsPage } from '../pages/tabs/tabs';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { PerfilPage } from "../pages/perfil/perfil";
import { EtiquetasPage } from "../pages/etiquetas/etiquetas";
import { ListaNoticiasPage } from "../pages/lista-noticias/lista-noticias";
import { ListarNoticiasEtiquetasPage } from "../pages/listar-noticias-etiquetas/listar-noticias-etiquetas";
import { NoticiaPage } from "../pages/noticia/noticia";

@NgModule({
  declarations: [
    MyApp,
    PerfilPage,
    EtiquetasPage,
    ListaNoticiasPage,
    TabsPage,
    ListarNoticiasEtiquetasPage,
    NoticiaPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    PerfilPage,
    EtiquetasPage,
    ListaNoticiasPage,
    TabsPage,
    ListarNoticiasEtiquetasPage,
    NoticiaPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler}
  ]
})
export class AppModule {}
