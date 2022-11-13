import { Component, OnInit } from '@angular/core';
import { Observable, of } from 'rxjs';
import { QuestionsResponse, QuestionsService } from 'src/app/services/questions/questions.service';

@Component({
  templateUrl: './practice-test.component.html',
  styleUrls: ['./practice-test.component.scss']
})
export class PracticeTestComponent implements OnInit {

  questionList: number[] = [];

  constructor(private questionService: QuestionsService) { }

  ngOnInit(): void {

    if (this.questionService.questionsLength() != -1) {
      this.generateRandomQuestions(this.questionService.questionsLength())
    }
    else {
      this.questionService.getQuestions().subscribe((data: any) => {
        this.generateRandomQuestions(data.length);
      });
    }

  }

  generateRandomQuestions(amt: number) {
    while (this.questionList.length < 10) {
      let num = Math.floor(Math.random() * amt) + 1;
      if (this.questionList.includes(num)) {
        continue;
      }
      else {
        this.questionList.push(num);
      }
    }
  }

}
