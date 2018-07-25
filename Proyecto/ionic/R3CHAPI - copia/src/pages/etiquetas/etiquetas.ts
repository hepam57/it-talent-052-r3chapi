import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the EtiquetasPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-etiquetas',
  templateUrl: 'etiquetas.html',
})
export class EtiquetasPage {
  public etiquetas: Array<any>;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.etiquetas = ['prueba 1','prueba 2','prueba 3','prueba 4','prueba 5'];
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad EtiquetasPage');
  }

}
