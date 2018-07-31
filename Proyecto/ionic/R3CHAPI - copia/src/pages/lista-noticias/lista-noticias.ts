import { Component } from '@angular/core';
import {IonicPage, NavController, NavParams, ToastController} from 'ionic-angular';
import {NoticiaPage} from "../noticia/noticia";
import {NoticiasProvider} from "../../providers/noticias/noticias";

/**
 * Generated class for the ListaNoticiasPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-lista-noticias',
  templateUrl: 'lista-noticias.html',
})
export class ListaNoticiasPage {
  public noticias: Array<any>;
  constructor(public navCtrl: NavController, public navParams: NavParams, public noticasP: NoticiasProvider, public toastCtrl: ToastController) {
    this.noticasP.all().subscribe((respuesta) => {
      console.log(respuesta);
      this.noticias = respuesta['noticias'];
    }, () => {
      const toast = this.toastCtrl.create({
        message: 'Error carga',
        duration: 3000,
        position: 'bottom'
      });
      toast.present();
    });
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ListaNoticiasPage');
  }

  public goNoticia(item:number):void{
    this.navCtrl.push(NoticiaPage,{id:item});
  }

}
