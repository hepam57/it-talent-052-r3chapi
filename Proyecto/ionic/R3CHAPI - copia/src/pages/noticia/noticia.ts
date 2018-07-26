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
      'description':'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.',
    };
  }

  ionViewDidLoad() {
    console.log(this.navParams.get('id'));
  }

}
