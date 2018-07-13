import { Injectable } from '@angular/core';

@Injectable()
export class MoviesService {

  constructor() { }

  public getMovieByTittle(title:string):void{
    alert(title);
  }
}
