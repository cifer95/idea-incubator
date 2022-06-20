import { Component, OnInit } from '@angular/core';
import {Idea} from "../../common/idea";
import {IdeaService} from "../../services/idea.service";

@Component({
  selector: 'app-idea-list',
  templateUrl: './idea-list.component.html',
  styleUrls: ['./idea-list.component.css']
})
export class IdeaListComponent implements OnInit {

  ideas!: Idea[];

  constructor(private ideaService: IdeaService) { }

  ngOnInit(): void {
    this.listIdeas();
  }

  listIdeas() {
    this.ideaService.getIdeaList().subscribe(
      data => {
        this.ideas = data;
      }
    )
  }

}
