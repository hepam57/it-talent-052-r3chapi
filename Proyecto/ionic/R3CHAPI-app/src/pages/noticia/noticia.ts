import { Component } from '@angular/core';
import {IonicPage, NavController, NavParams, ToastController} from 'ionic-angular';
import {NoticiasProvider} from "../../providers/noticias/noticias";

/**
 * Generated class for the NoticiaPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-noticia',
  templateUrl: 'noticia.html',
})
export class NoticiaPage {
  public noticia: any;
  constructor(public navCtrl: NavController, public navParams: NavParams, public noticasP: NoticiasProvider, public toastCtrl: ToastController) {
    this.noticasP.find(this.navParams.get('id')).subscribe((respuesta) => {
      this.noticia = respuesta['noticia'];
      console.log(this.noticia);
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
    console.log(this.navParams.get('id'));
  }

}
