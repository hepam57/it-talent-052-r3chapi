import { Component } from '@angular/core';
import { NavController, Platform } from 'ionic-angular';
import { Geolocation } from '@ionic-native/geolocation';
import { Camera, CameraOptions } from '@ionic-native/camera';
import { PrimerSProvider } from '../../providers/primer-s/primer-s';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  public base64Image;
  public respuesta: Array<any>;

  constructor(public navCtrl: NavController,
    public platform: Platform,
    public geolocation: Geolocation,
    public camera: Camera,
    public userProvider: PrimerSProvider) {
      this.platform.ready().then(()=>{
        this.geolocation.getCurrentPosition().then((position)=>{
          console.log(position);
        });
      })
  }


  public getPhotho():void{
  
    const options: CameraOptions = {
      quality: 100,
      destinationType: this.camera.DestinationType.FILE_URI,
      encodingType: this.camera.EncodingType.JPEG,
      mediaType: this.camera.MediaType.PICTURE
    }

    this.platform.ready().then(() => {
      this.camera.getPicture(options).then((image) => {
        console.log(image);
      })
    })

  }

  ngOninit(){
    
  }

  public buscar_usuarios():void{
    this.userProvider.obtenerUsuarios().subscribe((respuesta:Array<any>) => {
      this.respuesta = respuesta;
      console.log(respuesta)
    })
  }


}
