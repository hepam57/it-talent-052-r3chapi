import { Component } from '@angular/core';
<<<<<<< HEAD
import { NavController } from 'ionic-angular';
=======
import {NavController, Platform} from 'ionic-angular';
import {Geolocation} from "@ionic-native/geolocation";
import {Camera, CameraOptions} from "@ionic-native/camera";
>>>>>>> 25846237c98b362aa87faa98602bdab6ab83ef91

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

<<<<<<< HEAD
  constructor(public navCtrl: NavController) {

  }

=======

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



>>>>>>> 25846237c98b362aa87faa98602bdab6ab83ef91
}
