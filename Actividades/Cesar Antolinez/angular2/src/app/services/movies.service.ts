import { Injectable } from '@angular/core';
import {HttpClient, HttpParams} from '@angular/common/http';
// Es una injeccion a otros componentes, servicio
@Injectable()
export class MoviesService {

  private apiKey: string;
  constructor(private http: HttpClient) {
    this.apiKey = 'de12cc36';
  }
  public getMovieByTitle(title: string) {
    const params = new HttpParams( {
      fromObject: {
        apiKey: this.apiKey,
        t: title
      }
    });
    return this.http.get('http://www.omdbapi.com/', {
      params: params
    });
  }
}
