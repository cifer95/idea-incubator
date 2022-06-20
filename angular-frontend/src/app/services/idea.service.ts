import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {map, Observable} from "rxjs";
import {Idea} from "../common/idea";

@Injectable({
  providedIn: 'root'
})
export class IdeaService {

  private baseUrl = 'http://localhost:8080/api/ideas';

  constructor(private httpClient: HttpClient) { }

  getIdeaList(): Observable<Idea[]> {
    return this.getIdeas(this.baseUrl);
  }

  private getIdeas(searchUrl: string): Observable<Idea[]> {
    return this.httpClient.get<getResponseIdeas>(searchUrl).pipe(
      map(response => response._embedded.ideas)
    );
  }
}

interface getResponseIdeas {
  _embedded: {
    ideas: Idea[]
  }
}
