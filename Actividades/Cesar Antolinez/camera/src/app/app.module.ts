import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';

import { AboutPage } from '../pages/about/about';
import { ContactPage } from '../pages/contact/contact';
import { HomePage } from '../pages/home/home';
import { TabsPage } from '../pages/tabs/tabs';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
<<<<<<< HEAD
=======
import {Geolocation} from "@ionic-native/geolocation";
import {Camera} from "@ionic-native/camera";
import { UserProvider } from '../providers/user/user';
import {HttpClientModule} from "@angular/common/http";
>>>>>>> 25846237c98b362aa87faa98602bdab6ab83ef91

@NgModule({
  declarations: [
    MyApp,
    AboutPage,
    ContactPage,
    HomePage,
    TabsPage
  ],
  imports: [
    BrowserModule,
<<<<<<< HEAD
    IonicModule.forRoot(MyApp)
=======
    IonicModule.forRoot(MyApp),
    HttpClientModule
>>>>>>> 25846237c98b362aa87faa98602bdab6ab83ef91
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    AboutPage,
    ContactPage,
    HomePage,
    TabsPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
<<<<<<< HEAD
    {provide: ErrorHandler, useClass: IonicErrorHandler}
=======
    Geolocation,
    Camera,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    UserProvider
>>>>>>> 25846237c98b362aa87faa98602bdab6ab83ef91
  ]
})
export class AppModule {}
