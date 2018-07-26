import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import {NoticiaPage} from "../noticia/noticia";

/**
 * Generated class for the ListarNoticiasEtiquetasPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-listar-noticias-etiquetas',
  templateUrl: 'listar-noticias-etiquetas.html',
})
export class ListarNoticiasEtiquetasPage {
  public noticias: Array<any>;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.noticias = [
      {
        'id':1,
        'titulo':'Noticia 1',
        'description':'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.',
        'url':'https://http2.mlstatic.com/D_Q_NP_149115-MLM25197460482_112016-Q.jpg'
      },
      {
        'id':2,
        'titulo':'Noticia 2',
        'description':'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.',
        'url':'https://http2.mlstatic.com/D_Q_NP_149115-MLM25197460482_112016-Q.jpg'
      },
      {
        'id':3,
        'titulo':'Noticia 3',
        'description':'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.',
      }
    ];
  }

  public goNoticia(item:number):void{
    this.navCtrl.push(NoticiaPage,{id:item});
  }


}
