import { Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Question, QuestionsService } from 'src/app/services/questions/questions.service';
import { SidenavService } from 'src/app/services/sidenav/sidenav.service';

@Component({
  selector: 'app-questions-home',
  templateUrl: './questions-home.component.html',
  styleUrls: ['./questions-home.component.scss']
})
export class QuestionsHomeComponent implements OnInit {

  questions!: Question[]

  constructor(
    private qService: QuestionsService,
    private router: Router) { }

  ngOnInit(): void {
    this.qService.getQuestions().subscribe((data:any) => {
      this.questions = (data as Question[]).sort((a, b) => a.id - b.id);
    });
  }

  navigateToQuestion(qNum: number) : void {
    this.router.navigate(['question', 'q', qNum]);
  }
}
