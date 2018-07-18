import {Component, EventEmitter, OnInit, Output} from '@angular/core';
import {MoviesService} from '../../services/movies.service';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {

  public title: string;
  @Output()
  public emitir = new EventEmitter<string>();
  constructor(private movioService: MoviesService) { }

  ngOnInit() {
  }

  public search() {
    this.emitir.emit(this.title);
  }

}
