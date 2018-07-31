import { Component } from '@angular/core';
import {IonicPage, NavController, NavParams, ToastController} from 'ionic-angular';
import {ListarNoticiasEtiquetasPage} from "../listar-noticias-etiquetas/listar-noticias-etiquetas";
import {EtiquetasProvider} from "../../providers/etiquetas/etiquetas";

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
  public etiquetas: any[] = [];

  constructor(public navCtrl: NavController, public navParams: NavParams, public eti: EtiquetasProvider, public toastCtrl: ToastController) {

    this.eti.all().subscribe((respuesta)=>{

      this.etiquetas = respuesta['etiquetas'];
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
    console.log('ionViewDidLoad EtiquetasPage');
  }
  goNoticiasEtiqueta(id,nombre):void {
    this.navCtrl.push(ListarNoticiasEtiquetasPage, {id:id, nombre:nombre});
  }
}
