import { Component } from '@angular/core';
//Decoradores -> @
//Selector => Es una etiqueta - selector
//TemplateUrl => es el contenido
//styleUrls => 
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'app';
  miTexto: string;
  arreglo: Array<String> = [
  	'Uno',
  	'Dos',
  	'Tres'
  ]
  mostrar = false;
  //Metodos
  public MostrarAlerta(){
  	this.arreglo.push(this.miTexto);
  }

  public Validar(){
  	this.mostrar = !this.mostrar;
  }
}
