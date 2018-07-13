import { Component } from '@angular/core';
import { MoviesService } from './services/movies.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  //title = 'app';
  mostrar: boolean; 
  nombre: string;
  arreglo: Array<string>;
  title:string;
  constructor(private movieService:MoviesService){
    this.mostrar = true
    this.arreglo = [
      'Juan',
      'Pedro',
      'Pepe'
    ];
  }

  public agregar_arreglo():void{
    this.arreglo.push(this.nombre);
  }

    public searchMovie():void{
      //this.movieService.getMovieByTittle(this.title);
      
    }
}


