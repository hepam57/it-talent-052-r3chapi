import { Component } from '@angular/core';
import {NavController, Platform} from 'ionic-angular';
import {Geolocation} from "@ionic-native/geolocation";
import {Camera, CameraOptions} from "@ionic-native/camera";

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {


  constructor(public navCtrl: NavController, public geolocation: Geolocation, public platform: Platform, public camera: Camera) {
    this.platform.ready().then(()=>{
      this.geolocation.getCurrentPosition().then((position)=>{
        console.log(position);
      });
    });
  }

  public get_camera(){
    const cameraOption: CameraOptions ={
      quality: 100,
      destinationType: this.camera.DestinationType.DATA_URL,
      encodingType: this.camera.EncodingType.JPEG,
      mediaType: this.camera.MediaType.PICTURE
    };
    this.platform.ready().then(()=>{
      this.camera.getPicture(cameraOption).then((image)=>{
        console.log(image);
      });
    });
  }



}
