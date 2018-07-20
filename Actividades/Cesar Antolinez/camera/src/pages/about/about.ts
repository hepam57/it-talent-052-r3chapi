import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import {Camera} from "@ionic-native/camera";
import {UserProvider} from "../../providers/user/user";

@Component({
  selector: 'page-about',
  templateUrl: 'about.html'
})
export class AboutPage {
  public userList;

  constructor(public navCtrl: NavController, public camera: Camera, public user: UserProvider) {

  }

  public get_user(){

    this.user.get_user().subscribe((rest)=>{
      console.log(rest);
      this.userList = rest;
    });
  }

}
