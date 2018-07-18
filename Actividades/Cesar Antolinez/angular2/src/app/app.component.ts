import { Component } from '@angular/core';
import { MoviesService } from './services/movies.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title: string;
  mostrar: boolean;
  arreglo: Array<number>;
  captar: any;
  public movie: any;
  constructor(private movioService: MoviesService) {
    this.mostrar = false;
    this.arreglo = [0, 1, 2, 3, 4, 5];
  }
  public agregar(): void {
    this.arreglo.push(this.captar);
  }
  public searchMovie(title: string): void {
    this.movioService.getMovieByTitle(title)
      .subscribe((response: any) => {
        this.movie = response;
        console.log(response);
      });
  }
}
