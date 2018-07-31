import { Component } from '@angular/core';
import {IonicPage, NavController, NavParams, ToastController} from 'ionic-angular';
import {NoticiaPage} from "../noticia/noticia";
import {EtiquetasProvider} from "../../providers/etiquetas/etiquetas";

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
  public noticias;
  public titulo: string;

  constructor(public navCtrl: NavController, public navParams: NavParams, public  eti: EtiquetasProvider, public toastCtrl: ToastController) {
    this.titulo = this.navParams.get('nombre');
    this.eti.find(this.navParams.get('id')).subscribe((respuesta) => {
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

  public goNoticia(item:number) :void{
    this.navCtrl.push(NoticiaPage,{id:item});
  }


}
