import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'app';
  titulo = '';
  arreglo: Array<string> =[
    'pepe',
    'juan',
    'lupe'
  ];

  mostrar = false;

  public  Click(){

    //this.arreglo.push(this.titulo);

    this.mostrar = !this.mostrar;

  }
}
