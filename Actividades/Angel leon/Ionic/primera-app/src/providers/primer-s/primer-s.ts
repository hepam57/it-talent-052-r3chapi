import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from '../../../node_modules/rxjs/Observable';

/*
  Generated class for the PrimerSProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class PrimerSProvider {


  constructor(public http: HttpClient) {
    console.log('Hello PrimerSProvider Provider');
  }

  public obtenerUsuarios():Observable<any>{
    return this.http.get('https://esgantivar-fullstack-modelos.herokuapp.com/usuarios/todos')
  }

}
