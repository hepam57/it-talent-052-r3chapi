import { Component } from '@angular/core';
import { NavController, Platform } from 'ionic-angular';
import { Geolocation } from '@ionic-native/geolocation';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  constructor(public navCtrl: NavController,
    public platform: Platform,
    public geolocation: Geolocation) {
      this.platform.ready().then(()=>{
        this.geolocation.getCurrentPosition().then((position)=>{
          console.log(position);
        });
      })
  }

}
