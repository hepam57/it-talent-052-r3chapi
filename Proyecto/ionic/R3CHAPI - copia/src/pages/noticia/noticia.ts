import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

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
  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.noticia = {
      'id':'3',
      'titulo':'Noticia 3',
      'description':'<h1>Lorem</h1> <b>Ipsu</b> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.',
      'url':'http://static.t13.cl/images/sizes/1200x675/1532532005-rick-and-morty-658x370-4b072da7af5b7106.jpg'
    };
    console.log(this.noticia);
  }

  ionViewDidLoad() {
    console.log(this.navParams.get('id'));
  }

}
