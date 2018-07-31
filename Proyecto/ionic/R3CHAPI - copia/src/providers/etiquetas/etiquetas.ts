import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the EtiquetasProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class EtiquetasProvider {

  constructor(public http: HttpClient) {
    console.log('Hello EtiquetasProvider Provider');
  }

  public find(id){
    return this.http.get("http://localhost:3000/api/v1/etiqueta/"+id);
  }

  public all(){
    return this.http.get("http://localhost:3000/api/v1/etiqueta");
  }

}
