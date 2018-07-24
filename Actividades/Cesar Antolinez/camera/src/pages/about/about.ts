import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
<<<<<<< HEAD
=======
import {Camera} from "@ionic-native/camera";
import {UserProvider} from "../../providers/user/user";
>>>>>>> 25846237c98b362aa87faa98602bdab6ab83ef91

@Component({
  selector: 'page-about',
  templateUrl: 'about.html'
})
export class AboutPage {
<<<<<<< HEAD

  constructor(public navCtrl: NavController) {

  }

=======
  public userList;

  constructor(public navCtrl: NavController, public camera: Camera, public user: UserProvider) {

  }

  public get_user(){

    this.user.get_user().subscribe((rest)=>{
      console.log(rest);
      this.userList = rest;
    });
  }

>>>>>>> 25846237c98b362aa87faa98602bdab6ab83ef91
}
