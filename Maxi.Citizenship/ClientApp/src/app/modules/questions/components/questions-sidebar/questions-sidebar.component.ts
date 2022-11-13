import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Question } from 'src/app/services/questions/questions.service';
import { QuestionsResponse, QuestionsService } from 'src/app/services/questions/questions.service';

@Component({
  selector: 'app-questions-sidebar',
  templateUrl: './questions-sidebar.component.html',
  styleUrls: ['./questions-sidebar.component.scss']
})
export class QuestionsSidebarComponent implements OnInit {

  questionsLength!: number;
  questionIndexArr!: number[];

  constructor(private questionsService: QuestionsService, private router: Router, private activatedRoute: ActivatedRoute
) { }

  ngOnInit(): void {
    this.questionsService.getQuestions().subscribe((d:any) => {
      this.questionsLength = (d as Question[]).length;
      this.questionIndexArr = new Array(this.questionsLength);
    })
  }

  goTo(q: number): void {
    this.router.navigate([q], {relativeTo: this.activatedRoute})
  }

}
