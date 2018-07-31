import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the NoticiasProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class NoticiasProvider {

  constructor(public http: HttpClient) {
    console.log('Hello NoticiasProvider Provider');
  }

  public find(id){
    return this.http.get("https://r3chappi.herokuapp.com/api/v1/noticia/"+id);
  }

  public all(){
    return this.http.get("https://r3chappi.herokuapp.com/api/v1/noticia");
  }



}
